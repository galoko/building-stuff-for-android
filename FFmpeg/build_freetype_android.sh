cd freetype

TOOLCHAIN=$HOME/Components/Android/toolchain

export PATH=$TOOLCHAIN/bin:$PATH
export CXX="clang++"
export AS="clang"
export CC="clang"
export CFLAGS="-Ofast -fPIC -marm -D__ANDROID_API__=23"

make distclean
./configure \
    --prefix=$TOOLCHAIN \
    --host=arm-linux-androideabi \
    --disable-shared \
    --with-png=no \
    --with-zlib=no \
    --with-bzip2=no \
    --with-harfbuzz=no \
    --enable-static
make clean
make
make install
