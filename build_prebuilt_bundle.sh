TOOLCHAIN=$HOME/Components/Android/toolchain

rm -r prebuilt
mkdir prebuilt
cd prebuilt
mkdir include
mkdir lib

cp -r $TOOLCHAIN/include/libavcodec ./include/libavcodec
cp -r $TOOLCHAIN/include/libavformat ./include/libavformat
cp -r $TOOLCHAIN/include/libavfilter ./include/libavfilter
cp -r $TOOLCHAIN/include/libavutil ./include/libavutil
cp -r $TOOLCHAIN/include/libswscale ./include/libswscale
cp -r $TOOLCHAIN/sdk/native/jni/include/opencv ./include/opencv
cp -r $TOOLCHAIN/sdk/native/jni/include/opencv2 ./include/opencv2

cp $TOOLCHAIN/lib/libavcodec.a ./lib/libavcodec.a
cp $TOOLCHAIN/lib/libavformat.a ./lib/libavformat.a
cp $TOOLCHAIN/lib/libavfilter.a ./lib/libavfilter.a
cp $TOOLCHAIN/lib/libavutil.a ./lib/libavutil.a
cp $TOOLCHAIN/lib/libx264.a ./lib/libx264.a
#cp $TOOLCHAIN/lib/libopus.a ./lib/libopus.a
cp $TOOLCHAIN/lib/libswscale.a ./lib/libswscale.a
cp $TOOLCHAIN/lib/libfreetype.a ./lib/libfreetype.a

cp -r $TOOLCHAIN/sdk/native/3rdparty/libs/armeabi-v7a/. ./lib/
cp -r $TOOLCHAIN/sdk/native/staticlibs/armeabi-v7a/. ./lib/
