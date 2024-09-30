cmake_minimum_required(VERSION 3.22.1)
project(OpusEnc VERSION 0.2.1)

include(FetchContent)
FetchContent_Declare(
        speexdsp
        GIT_REPOSITORY https://github.com/alfatraining/speexdsp.git
        GIT_TAG 872e112
)
FetchContent_Declare(
        opus
        GIT_REPOSITORY https://github.com/xiph/opus.git
        GIT_TAG v1.5.2
)
set(OPUS_BUILD_TESTING OFF)
set(OPUS_BUILD_PROGRAMS OFF)
FetchContent_MakeAvailable(speexdsp opus)

add_library(opusenc SHARED
    src/ogg_packer.c
    src/opus_header.c
    src/opusenc.c
    src/picture.c
    src/unicode_support.c)

string(RANDOM CMAKE_RANDOM_PREFIX)

target_compile_options(opusenc PRIVATE -O0 -flto=thin)
target_compile_definitions(opusenc PRIVATE
        "PACKAGE_VERSION=\"${PROJECT_VERSION}\""
        "PACKAGE_NAME=\"libopusenc_handygram\"")

target_include_directories(opusenc PRIVATE src)
target_include_directories(opusenc PUBLIC  include)

target_link_libraries(opusenc
        Opus::opus
        libspeexdsp)

add_library(libopusenc ALIAS opusenc)
add_library(OpusEnc::OpusEnc ALIAS opusenc)
