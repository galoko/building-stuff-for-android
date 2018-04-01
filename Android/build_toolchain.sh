PLATFORM_PREFIX=$HOME/Components/Android/toolchain
NDK_PATH=$HOME/Components/Android/NDK
NDK_PLATFORM=android-23
 
$NDK_PATH/build/tools/make-standalone-toolchain.sh --verbose --platform=$NDK_PLATFORM --install-dir=$PLATFORM_PREFIX
