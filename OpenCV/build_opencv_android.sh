cd opencv
rm -r build
mkdir build
cd build

TOOLCHAIN=$HOME/Components/Android/toolchain
ANDROID_ABI="armeabi-v7a with NEON"

cmake .. \
-DCMAKE_TOOLCHAIN_FILE=$HOME/Components/OpenCV/opencv/platforms/android/android.toolchain.cmake \
-DCMAKE_INSTALL_PREFIX=$TOOLCHAIN \
-DCMAKE_BUILD_TYPE=RELEASE \
-DCMAKE_C_FLAGS_RELEASE="-Ofast -funwind-tables -Wl,--no-merge-exidx-entries" \
-DCMAKE_CXX_FLAGS_RELEASE="-Ofast -funwind-tables -Wl,--no-merge-exidx-entries" \
-DANDROID_STANDALONE_TOOLCHAIN=$TOOLCHAIN \
-DANDROID_TOOLCHAIN_NAME="standalone-clang" \
-DANDROID_ABI="${ANDROID_ABI}" \
-DOPENCV_EXTRA_MODULES_PATH=/home/gal/Components/OpenCV/opencv_contrib/modules \
-DOPENCV_ENABLE_NONFREE=1 \
-DBUILD_SHARED_LIBS=0 \
-DBUILD_JAVA=1 \
-DBUILD_TESTS=0 \
-DBUILD_PERF_TESTS=0 \
-DBUILD_ANDROID_EXAMPLES=0 \
-DBUILD_DOCS=0 \
-DBUILD_PACKAGE=0 \
-DBUILD_OPENEXR=0 \
-DBUILD_FAT_JAVA_LIB=0 \
-DBUILD_opencv_objdetect=0 \
-DBUILD_opencv_xobjdetect=0 \
-DBUILD_opencv_datasets=0 \
-DBUILD_opencv_ml=0 \
-DBUILD_opencv_dpm=0 \
-DBUILD_opencv_surface_matching=0 \
-DBUILD_opencv_photo=0 \
-DBUILD_opencv_videostab=0 \
-DBUILD_opencv_stitching=0 \
-DBUILD_opencv_shape=0 \
-DBUILD_opencv_superres=0 \
-DBUILD_opencv_viz=0 \
-DBUILD_opencv_aruco=0 \
-DBUILD_opencv_bioinspired=0 \
-DBUILD_opencv_ccalib=0 \
-DBUILD_opencv_cvv=0 \
-DBUILD_opencv_dnn=0 \
-DBUILD_opencv_dnn_objdetect=0 \
-DBUILD_opencv_face=0 \
-DBUILD_opencv_fuzzy=0 \
-DBUILD_opencv_hdf=0 \
-DBUILD_opencv_line_descriptor=0 \
-DBUILD_opencv_matlab=0 \
-DBUILD_opencv_plot=0 \
-DBUILD_opencv_tracking=0 \
-DBUILD_opencv_reg=0 \
-DBUILD_opencv_rgbd=0 \
-DBUILD_opencv_saliency=0 \
-DBUILD_opencv_sfm=0 \
-DBUILD_opencv_stereo=0 \
-DBUILD_opencv_structured_light=0 \
-DBUILD_opencv_surface_matching=0 \
-DBUILD_opencv_text=0 \
-DBUILD_opencv_tracking=0 \
-DBUILD_opencv_xfeatures2d=0 \
-DBUILD_opencv_videoio=0 \
-DBUILD_opencv_img_hash=0 \
-DBUILD_opencv_phase_unwrapping=0 \
-DBUILD_opencv_apps=0 \
-DBUILD_opencv_python_bindings_generator=0 \
-DBUILD_JPEG=0 \
-DBUILD_PNG=0 \
-DBUILD_TIFF=0 \
-DBUILD_WEBP=0 \
-DWITH_GPHOTO2=0 \
-DWITH_CUFFT=0 \
-DWITH_FFMPEG=0 \
-DWITH_CUBLAS=0 \
-DWITH_1394=0 \
-DWITH_MATLAB=0 \
-DWITH_CUDA=0 \
-DWITH_GSTREAMER=0\
-DWITH_NVCUVID=0 \
-DWITH_JASPER=0 \
-DWITH_OPENEXR=0 \
-DWITH_ITT=0 \
-DWITH_TIFF=0 \
-DWITH_JPEG=0 \
-DWITH_PNG=0 \
-DWITH_WEBP=0

make -j5
make install

