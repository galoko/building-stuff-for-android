cd openh264

export PATH=$HOME/Programs/Android/Sdk/tools:$PATH
export CXX="clang++"
export AS="clang"
export CC="clang"
export CFLAGS="-I$HOME/Components/Android/NDK/sysroot/usr/include -I$HOME/Components/Android/NDK/sysroot/usr/include/arm-linux-androideabi"

make clean
make OS=android NDKROOT=$HOME/Components/Android/NDK TARGET=android-23 NDKLEVEL=23 ARCH=arm
make OS=android NDKROOT=$HOME/Components/Android/NDK TARGET=android-23 NDKLEVEL=23 ARCH=arm install
