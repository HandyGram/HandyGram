#include <opusfile.h>
#include <android/log.h>
#include <algorithm>

#define LOG_TAG "HG_Natives_WaveformGenerator"

#define LOG(level, ...) __android_log_print( \
    level, LOG_TAG, __VA_ARGS__)

#define ALOGE(...) LOG(ANDROID_LOG_ERROR, __VA_ARGS__)

struct SizedBuf {
    int32_t length;
    uint8_t *buf;
};

// https://github.com/TGX-Android/Telegram-X/blob/6e802322154cd269a40e1ba46e16a396ff386b54/app/jni/voice.c#L875
static inline void set_bits(uint8_t *bytes, int32_t bitOffset, int32_t value) {
    bytes += bitOffset / 8;
    bitOffset %= 8;
    *((int32_t *) bytes) |= (value << bitOffset);
}

extern "C" SizedBuf *getTelegramWaveform(const char *path) {
    int error = OPUS_OK;
    auto op = op_open_file(path, &error);
    if (!op) {
        ALOGE("failed to open opus file %s", opus_strerror(error));
        return nullptr;
    }

    auto totalSamples = op_pcm_total(op, -1);
    int32_t resultSamples = 100;
    auto sampleRate = (int32_t)std::max<int64_t>(1, totalSamples / resultSamples);

    if (totalSamples <= 0) {
        ALOGE("No samples");
        op_free(op);
        return nullptr;
    }

    auto samples = new uint16_t[100];
    auto bufSize = 1024 * 64;
    auto sampleBuffer = new int16_t[bufSize];

    uint64_t sampleIndex = 0;
    uint16_t peakSample = 0;

    int index = 0;
    while (true) {
        int readSamples = op_read(op, sampleBuffer, bufSize / 2, nullptr);
        for (int i = 0; i < readSamples; i++) {
            auto sample = (uint16_t) abs(sampleBuffer[i]);
            if (sample > peakSample) {
                peakSample = sample;
            }
            if (sampleIndex++ % sampleRate == 0) {
                if (index < resultSamples) {
                    samples[index++] = peakSample;
                }
                peakSample = 0;
            }
        }
        if (readSamples == 0) {
            break;
        }
    }
    delete[] sampleBuffer;
    op_free(op);

    int64_t sumSamples = 0;
    for (int i = 0; i < resultSamples; i++) {
        sumSamples += samples[i];
    }
    auto peak = (uint16_t) ((float)sumSamples * 1.8f / (float)resultSamples);
    if (peak < 2500) {
        peak = 2500;
    }

    for (int i = 0; i < resultSamples; i++) {
        auto sample = (uint16_t) ((int64_t) samples[i]);
        if (sample > peak) {
            samples[i] = peak;
        }
    }

    const auto resultSamplesBits = resultSamples * 5;

    auto szbuf = new SizedBuf;
    szbuf->length = resultSamplesBits / 8 + ((resultSamplesBits % 8) ? 0 : 1);
    szbuf->buf = new uint8_t[szbuf->length];
    for (int i = 0; i < resultSamples; i++) {
        int32_t value = std::min(31, abs((int32_t) samples[i]) * 31 / peak);
        set_bits(szbuf->buf, i * 5, value & 31);
    }
    delete[] samples;

    return szbuf;
}
