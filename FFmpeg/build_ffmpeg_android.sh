cd ffmpeg

TOOLCHAIN=$HOME/Components/Android/toolchain

export PATH=$TOOLCHAIN/bin:$PATH
export CXX="clang++"
export AS="clang"
export CC="clang"
export PKG_CONFIG_PATH="$TOOLCHAIN/lib/pkgconfig"

make distclean
./configure \
    --prefix=$TOOLCHAIN \
    --cross-prefix=arm-linux-androideabi- \
    --target-os=linux \
    --arch=arm \
    --cpu=armv7-a \
    --enable-cross-compile \
    --sysroot=$TOOLCHAIN/sysroot \
    --extra-cflags="-Ofast -fPIC -marm -D__ANDROID_API__=23 -funwind-tables -Wl,--no-merge-exidx-entries -I$TOOLCHAIN/include" \
    --extra-ldflags="-L$TOOLCHAIN/lib" \
    --disable-doc \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-avdevice \
    --disable-doc \
    --disable-symver \
    --disable-debug \
    --disable-runtime-cpudetect \
    --disable-decoders \
    --disable-avdevice \
    --disable-swresample \
    --disable-postproc \
    --disable-zlib \
    --disable-network \
    --disable-devices \
    --disable-encoders \
    --disable-protocols \
    --disable-parsers \
    --disable-filters \
    --disable-muxers \
    --disable-demuxers \
    --disable-bsfs \
    --disable-xlib \
    --disable-shared \
    --enable-static \
    --enable-gpl \
    --enable-libx264 \
    --enable-encoder=libx264 \
    --enable-libfreetype \
    --enable-filter=drawtext \
    --enable-filter=scale \
    --enable-filter=null \
    --enable-muxer=flv \
    --enable-protocol=file \
    --pkg-config-flags="--static" \
    --pkg-config=pkg-config \
    --cc="clang" \
    --cxx="clang++" \
    --objcc="clang" \
    --dep-cc="clang"
make clean
make
make install


#    --enable-muxer=matroska \
#    --enable-muxer=mp4 \
#    --enable-libopus \
#    --enable-encoder=libopus \
