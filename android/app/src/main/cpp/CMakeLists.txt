cmake_minimum_required(VERSION 3.22.1)
project("handygram")

add_subdirectory(libopusenc)

include(FetchContent)
FetchContent_Declare(
        ogg
        GIT_REPOSITORY https://github.com/xiph/ogg.git
        GIT_TAG v1.3.5
)
FetchContent_Declare(
        opusfile
        GIT_REPOSITORY https://github.com/xiph/opusfile.git
        GIT_TAG 9d71834
)
set(OP_DISABLE_HTTP ON)
set(OP_DISABLE_EXAMPLES ON)
set(OP_DISABLE_DOCS ON)
FetchContent_MakeAvailable(ogg opusfile)

add_library(handygram_OpusEncoder SHARED
    OpusEncoder.cpp)

add_library(ffistuff SHARED
    WaveformGenerator.cpp)

target_compile_options(handygram_OpusEncoder PRIVATE -O0 -flto=thin)
target_compile_options(ffistuff PRIVATE -O0 -flto=thin)

target_link_libraries(handygram_OpusEncoder
    android
    log
    OpusEnc::OpusEnc)

target_link_libraries(ffistuff
    android
    log
    opusfile
    Opus::opus)

