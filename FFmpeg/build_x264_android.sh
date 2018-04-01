cd x264
TOOLCHAIN=$HOME/Components/Android/toolchain

export PATH=$TOOLCHAIN/bin:$PATH
export CXX="clang++"
export AS="clang"
export CC="clang"

make distclean
./configure \
    --prefix=$TOOLCHAIN \
    --host=arm-linux-androideabi \
    --cross-prefix=arm-linux-androideabi- \
    --sysroot=$TOOLCHAIN/sysroot \
    --extra-cflags="-Ofast -fPIC -marm -D__ANDROID_API__=23" \
    --enable-pic \
    --enable-static \
    --disable-avs \
    --disable-swscale \
    --disable-lavf \
    --disable-ffms \
    --disable-gpac \
    --disable-lsmash \
    --disable-opencl \
    --enable-strip \
    --disable-cli \
    --chroma-format=420
make clean
make
make install
