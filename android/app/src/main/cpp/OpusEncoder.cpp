#include <opusenc.h>
#include <jni.h>
#include <android/log.h>
#include <cstring>
#include <memory>

#define LOG_TAG "HG_Natives_OpusEncoder"

#define LOG(level, ...) __android_log_print( \
    level, LOG_TAG, __VA_ARGS__)

#define ALOGI(...) LOG(ANDROID_LOG_INFO, __VA_ARGS__)
#define ALOGE(...) LOG(ANDROID_LOG_ERROR, __VA_ARGS__)

struct OpusEncoderHandle {
    OggOpusEnc *ope;
    OggOpusComments *comments;
    char *filename;
    int channel_count;
};

void jstring_copy(JNIEnv *env, jstring jString, char **ret) {
    jboolean isCopy;
    auto nString = env->GetStringUTFChars(jString, &isCopy);

    auto len = strlen(nString) + 1;
    *ret = new char[len];
    strncpy(*ret, nString, len);

    env->ReleaseStringUTFChars(jString, nString);
}

extern "C" JNIEXPORT jlong JNICALL
Java_ru_tdrk_handygram_OpusEncoder_opusBegin(
        JNIEnv* env,
        jobject,
        jstring file_name,
        jint channel_count,
        jint sample_rate)
{
    auto handle = new OpusEncoderHandle;
    if (!handle) {
        ALOGE("Failed to initialize handle");
        return -1;
    }

    handle->channel_count = channel_count;
    handle->comments = ope_comments_create();
    ope_comments_add(handle->comments, "TITLE", "Voice message");
    ope_comments_add(handle->comments, "DESCRIPTION", "Recorded with HandyGram");
    jstring_copy(env, file_name, &handle->filename);

    int error = 0;
    handle->ope = ope_encoder_create_file(
        handle->filename,
        handle->comments,
        sample_rate,
        handle->channel_count,
        0,
        OPUS_APPLICATION_VOIP,
        &error
    );

    if (!handle->ope) {
        ALOGE("Failed to init OpusEnc: %s", ope_strerror(error));
        ope_comments_destroy(handle->comments);
        delete handle;
        return -1;
    }

    ope_encoder_ctl(handle->ope, OPUS_SET_BITRATE_REQUEST, OPUS_BITRATE_MAX);
    ope_encoder_ctl(handle->ope, OPUS_SET_VBR_REQUEST, 1);
    ope_encoder_ctl(handle->ope, OPUS_SET_VBR_CONSTRAINT_REQUEST, 1);
    ope_encoder_ctl(handle->ope, OPUS_SET_SIGNAL_REQUEST, OPUS_SIGNAL_VOICE);
    ope_encoder_ctl(handle->ope, OPUS_SET_LSB_DEPTH_REQUEST, 16);
    ope_encoder_ctl(handle->ope, OPUS_SET_FORCE_CHANNELS_REQUEST, 1);

    ALOGI("Initialized OpusEnc for file %s (%d ch / %d Hz)",
          handle->filename, handle->channel_count, sample_rate);
    return (jlong)handle;
}

extern "C" JNIEXPORT void JNICALL
Java_ru_tdrk_handygram_OpusEncoder_opusFinish(
        JNIEnv* env,
        jobject,
        jlong handle_long)
{
    auto handle = (OpusEncoderHandle *)handle_long;
    if (!handle)
        return;

    ALOGI("Finishing OpusEnc for file %s", handle->filename);

    ope_encoder_drain(handle->ope);
    ope_encoder_destroy(handle->ope);
    ope_comments_destroy(handle->comments);
    delete handle->filename;
    delete handle;
}

extern "C" JNIEXPORT jint JNICALL
Java_ru_tdrk_handygram_OpusEncoder_opusEncodeFrame(
        JNIEnv* env,
        jobject,
        jobject pcm_frame,
        jlong handle_long)
{
    auto handle = (OpusEncoderHandle *)handle_long;

    auto ret = ope_encoder_write(
            handle->ope,
            (int16_t *)env->GetDirectBufferAddress(pcm_frame),
            (int)env->GetDirectBufferCapacity(pcm_frame) / 2 / handle->channel_count);
    if (ret != OPE_OK) {
        ALOGE("Failed to encode Opus frame: %s", ope_strerror(ret));
        return -1;
    }

    return 0;
}