#!/bin/bash

# Create and activate virtual environment
virtualenv venv
source venv/bin/activate

# Install necessary packages
pip install numpy

# Clone OpenCV and OpenCV_contrib repositories
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

# Navigate to the OpenCV directory
cd opencv

# Create a build directory and navigate to it
mkdir build && cd build

# Set the path to OpenCV extra modules
OPENCV_EXTRA_MODULES_PATH=<path_to_opencv_extra_modules>
# the path for the extra modules is the `opencv_contrib` dir's path

# Run CMake to configure the build
cmake -DOPENCV_EXTRA_MODULES_PATH=$OPENCV_EXTRA_MODULES_PATH \
-D BUILD_opencv_python2=OFF \
-D BUILD_ZLIB=OFF \
-D BUILD_opencv_legacy=OFF \
-D BUILD_EXAMPLES=ON \
..

# Build OpenCV using make
make -j4

# Install OpenCV
sudo make install

# Deactivate virtual environment
deactivate

echo "OpenCV installation completed."
