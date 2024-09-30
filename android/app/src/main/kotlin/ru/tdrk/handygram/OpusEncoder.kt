package ru.tdrk.handygram

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder.AudioSource
import android.media.audiofx.AcousticEchoCanceler
import android.media.audiofx.AutomaticGainControl
import android.media.audiofx.NoiseSuppressor
import android.util.Log
import java.nio.ByteBuffer
import kotlin.concurrent.thread
import kotlin.math.max

class OpusEncoder(
    private val outputFile: String,
    context: Context
) {
    private val TAG = "HG_OpusEncoder"

    private val record: AudioRecord
    private val noiseSuppressor: NoiseSuppressor?
    private val automaticGainControl: AutomaticGainControl?
    private val acousticEchoCanceler: AcousticEchoCanceler?
    private val frameSize: Int
    private val channelCount: Int
    private val sampleRate: Int
    private var isStopped = false
    private var opusHandle: Long? = null
    private var opusThread: Thread? = null

    companion object {
        init {
            System.loadLibrary("handygram_OpusEncoder")
        }
    }

    private class ARParams(
        val sourceType: Int,
        val sampleRate: Int
    )

    private val possibleParams = arrayOf(
        ARParams(AudioSource.VOICE_COMMUNICATION, 48000),
        ARParams(AudioSource.MIC, 48000),
        ARParams(AudioSource.VOICE_COMMUNICATION, 44100),
        ARParams(AudioSource.MIC, 44100),
    )

    init {
        if (context.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
            throw Error("No RECORD_AUDIO permission");
        }

        lateinit var record : AudioRecord
        for (params in possibleParams) {
            record = AudioRecord(
                params.sourceType,
                params.sampleRate,
                AudioFormat.CHANNEL_IN_MONO,
                AudioFormat.ENCODING_PCM_16BIT,
                max(
                    AudioRecord.getMinBufferSize(48000, AudioFormat.CHANNEL_IN_MONO,
                        AudioFormat.ENCODING_PCM_16BIT),
                    48 * 20 * 2,
                )
            )
            if (record.state == AudioRecord.STATE_INITIALIZED) break
        }

        if (record.state != AudioRecord.STATE_INITIALIZED) {
            throw Error("Failed to initialize AudioRecord")
        }

        this.record = record

        channelCount = 1
        sampleRate = record.sampleRate
        frameSize =
            if (sampleRate == 48000)
                48 * 20
            else
                (44.1 * 20).toInt()


        noiseSuppressor = if (NoiseSuppressor.isAvailable()) {
            val suppressor = NoiseSuppressor.create(record.audioSessionId)
            suppressor.enabled = false
            suppressor
        } else null

        automaticGainControl = if (AutomaticGainControl.isAvailable()) {
            val gainControl = AutomaticGainControl.create(record.audioSessionId)
            gainControl.enabled = false
            gainControl
        } else null

        acousticEchoCanceler = if (AcousticEchoCanceler.isAvailable()) {
            val echoCanceler = AcousticEchoCanceler.create(record.audioSessionId)
            echoCanceler.enabled = false
            echoCanceler
        } else null
    }

    fun start() {
        if (isStopped) throw IllegalStateException("Encoder was freed")

        if (record.recordingState != AudioRecord.RECORDSTATE_RECORDING)
            record.startRecording()

        if (opusHandle == null) {
            opusHandle = opusBegin(outputFile, channelCount, record.sampleRate)
            if (opusHandle?.toInt() == -1) {
                record.release()
                isStopped = true
                throw Error("Failed to init OpusEnc")
            }
        }

        if (opusThread == null) {
            opusThread = thread {
                val size = frameSize * 2 * channelCount
                val buffer = ByteBuffer.allocateDirect(size)
                while (!isStopped) {
                    val read = record.read(buffer, size)
                    if (read > 0) {
                        opusEncodeFrame(
                            buffer,
                            opusHandle ?: throw IllegalStateException()
                        )
                    }
                }
            }
        }
    }

    fun pause() {
        if (this.opusHandle == null)
            throw IllegalStateException("Encoder is not running")

        if (record.recordingState != AudioRecord.RECORDSTATE_STOPPED)
            record.stop()
    }

    fun stop() {
        if (this.opusHandle == null)
            throw IllegalStateException("Encoder is not running")

        if (record.recordingState != AudioRecord.RECORDSTATE_STOPPED)
            record.stop()

        record.release()

        isStopped = true
        opusThread?.join()

        opusFinishSafe()
    }

    private fun opusFinishSafe() {
        opusHandle?.let { opusHandle ->
            opusFinish(opusHandle)
            this.opusHandle = null
        }
    }

    private external fun opusBegin(fileName: String, channelCount: Int, sampleRate: Int): Long
    private external fun opusFinish(handle: Long)
    private external fun opusEncodeFrame(pcmFrame: ByteBuffer, handle: Long): Int
}