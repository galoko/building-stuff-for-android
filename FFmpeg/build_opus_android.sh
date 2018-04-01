cd opus
TOOLCHAIN=$HOME/Components/Android/toolchain

export PATH=$TOOLCHAIN/bin:$PATH
export CXX="clang++"
export AS="clang"
export CC="clang"
export CFLAGS="-O3 -fPIC -marm -D__ANDROID_API__=23"

make distclean
./configure \
    --prefix=$TOOLCHAIN \
    --host=arm-linux-androideabi \
    --disable-doc \
    --disable-shared \
    --enable-static \
    --disable-extra-programs
make clean
make
make install
