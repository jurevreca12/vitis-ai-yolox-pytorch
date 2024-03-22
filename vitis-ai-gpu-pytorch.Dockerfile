FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-devel

RUN apt-get update -y 
RUN apt install -y --no-install-recommends apt-transport-https 
RUN apt install -y --no-install-recommends autoconf 
RUN apt install -y --no-install-recommends automake 
RUN apt install -y --no-install-recommends bc 
RUN apt install -y --no-install-recommends build-essential 
RUN apt install -y --no-install-recommends bzip2 
RUN apt install -y --no-install-recommends ca-certificates 
RUN apt install -y --no-install-recommends curl 
RUN apt install -y --no-install-recommends g++ 
RUN apt install -y --no-install-recommends gdb 
RUN apt install -y --no-install-recommends git 
RUN apt install -y --no-install-recommends gnupg 
RUN apt install -y --no-install-recommends locales 
RUN ln -fs /usr/share/zoneinfo/Europe/Ljubljana /etc/localtime
RUN apt install -y --no-install-recommends tzdata
RUN apt install -y --no-install-recommends libboost-all-dev 
RUN apt install -y --no-install-recommends libgflags-dev 
RUN apt install -y --no-install-recommends libgoogle-glog-dev 
RUN apt install -y --no-install-recommends libgtest-dev 
RUN apt install -y --no-install-recommends libjsoncpp-dev 
RUN apt install -y --no-install-recommends libssl-dev 
RUN apt install -y --no-install-recommends libtool 
RUN apt install -y --no-install-recommends libunwind-dev 
RUN apt install -y --no-install-recommends make 
RUN apt install -y --no-install-recommends openssh-client 
RUN apt install -y --no-install-recommends openssl 
RUN apt install -y --no-install-recommends python3 
RUN apt install -y --no-install-recommends python3-dev 
RUN apt install -y --no-install-recommends python3-minimal 
RUN apt install -y --no-install-recommends python3-numpy 
RUN apt install -y --no-install-recommends python3-opencv 
RUN apt install -y --no-install-recommends python3-pip 
RUN apt install -y --no-install-recommends python3-setuptools 
RUN apt install -y --no-install-recommends python3-venv 
RUN apt install -y --no-install-recommends software-properties-common 
RUN apt install -y --no-install-recommends sudo 
RUN apt install -y --no-install-recommends tree 
RUN apt install -y --no-install-recommends unzip 
RUN apt install -y --no-install-recommends vim 
RUN apt install -y --no-install-recommends wget 
RUN apt install -y --no-install-recommends yasm 
RUN apt install -y --no-install-recommends zstd 
RUN apt install -y --no-install-recommends libavcodec-dev 
RUN apt install -y --no-install-recommends libavformat-dev 
RUN apt install -y --no-install-recommends libeigen3-dev 
RUN apt install -y --no-install-recommends libgstreamer-plugins-base1.0-dev 
RUN apt install -y --no-install-recommends libgstreamer1.0-dev 
RUN apt install -y --no-install-recommends libgtest-dev 
RUN apt install -y --no-install-recommends libgtk-3-dev 
RUN apt install -y --no-install-recommends libgtk2.0-dev 
RUN apt install -y --no-install-recommends libhdf5-dev 
RUN apt install -y --no-install-recommends libjpeg-dev 
RUN apt install -y --no-install-recommends libopenexr-dev 
RUN apt install -y --no-install-recommends libpng-dev 
RUN apt install -y --no-install-recommends libswscale-dev 
RUN apt install -y --no-install-recommends libtiff-dev 
RUN apt install -y --no-install-recommends libwebp-dev 
RUN apt install -y --no-install-recommends opencl-clhpp-headers 
RUN apt install -y --no-install-recommends opencl-headers 
RUN apt install -y --no-install-recommends pocl-opencl-icd 
RUN apt install -y --no-install-recommends python3-opencv 
RUN apt install -y --no-install-recommends python3-pip 
RUN apt install -y --no-install-recommends python3-setuptools 
RUN apt install -y --no-install-recommends python3-venv 
RUN apt install -y --no-install-recommends software-properties-common 
RUN apt install -y --no-install-recommends sudo 
RUN apt install -y --no-install-recommends tree 
RUN apt install -y --no-install-recommends unzip 
RUN apt install -y --no-install-recommends vim 
RUN apt install -y --no-install-recommends wget 
RUN apt install -y --no-install-recommends yasm 
RUN apt install -y --no-install-recommends zstd 
RUN apt install -y --no-install-recommends libavcodec-dev 
RUN apt install -y --no-install-recommends libavformat-dev 
RUN apt install -y --no-install-recommends libeigen3-dev 
RUN apt install -y --no-install-recommends libgstreamer-plugins-base1.0-dev 
RUN apt install -y --no-install-recommends libgstreamer1.0-dev 
RUN apt install -y --no-install-recommends libgtest-dev 
RUN apt install -y --no-install-recommends libgtk-3-dev 
RUN apt install -y --no-install-recommends libgtk2.0-dev 
RUN apt install -y --no-install-recommends libhdf5-dev 
RUN apt install -y --no-install-recommends libjpeg-dev 
RUN apt install -y --no-install-recommends libopenexr-dev 
RUN apt install -y --no-install-recommends libpng-dev 
RUN apt install -y --no-install-recommends libswscale-dev 
RUN apt install -y --no-install-recommends libtiff-dev 
RUN apt install -y --no-install-recommends libwebp-dev 
RUN apt install -y --no-install-recommends opencl-clhpp-headers 
RUN apt install -y --no-install-recommends opencl-headers 
RUN apt install -y --no-install-recommends ffmpeg 
RUN apt install -y --no-install-recommends pocl-opencl-icd 
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt update
RUN apt install -y --no-install-recommends g++-11
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 30
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 30
RUN update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-11 30 

RUN cd /tmp \
    && wget https://github.com/Kitware/CMake/releases/download/v3.28.4/cmake-3.28.4.tar.gz \
    && tar -xvf cmake-3.28.4.tar.gz \
    && cd cmake-3.28.4 \
    && ./bootstrap \
    && make \
    && make install

RUN cd /tmp \
    && wget --progress=dot:mega -O glog.0.4.0.tar.gz https://codeload.github.com/google/glog/tar.gz/v0.4.0 \
    && tar -xvf glog.0.4.0.tar.gz \
    && cd glog-0.4.0 \
    && ./autogen.sh \
    && mkdir build \
    && cd build \
    && cmake -DBUILD_SHARED_LIBS=ON .. \
    && make -j \
    && make install  

RUN cd /tmp; wget --progress=dot:mega https://codeload.github.com/google/protobuf/zip/v3.4.0 \
    && unzip v3.4.0 \
    && cd protobuf-3.4.0 \
    && ./autogen.sh \
    && ./configure \
    && make -j \
    && make install \
    && ldconfig \
    && cd /tmp; wget --progress=dot:mega https://github.com/gflags/gflags/archive/v2.2.2.tar.gz \
    && tar xvf v2.2.2.tar.gz \
    && cd gflags-2.2.2 \
    && mkdir build \
    && cd build \
    && cmake -DBUILD_SHARED_LIBS=ON .. \
    && make -j \
    && make install

RUN git clone --depth 1 --branch v3.0 https://github.com/Xilinx/Vitis-AI.git
RUN sed -i 's/scipy==1.3.1/scipy/g' /workspace/Vitis-AI/src/vai_quantizer/vai_q_pytorch/pytorch_binding/setup.py
RUN sed -i 's/numpy==1.17.2/numpy/g' /workspace/Vitis-AI/src/vai_quantizer/vai_q_pytorch/pytorch_binding/setup.py
RUN python -m pip install --upgrade pip 
RUN python -m pip install --upgrade graphviz \
	imageio \
	scikit-image \
	natsort \
	nibabel \
	easydict \
	yacs \
	fire \
	numba \
	loguru

RUN add-apt-repository ppa:timsc/opencv-3.4 \
    && apt-get update \
    && apt install -y\
        libcv-dev=3.4.1-bionic1.1 \
        libcv3.4=3.4.1-bionic1.1 \
        libopencv-calib3d-dev=3.4.1-bionic1.1  \
        libopencv-calib3d3.4-dbg=3.4.1-bionic1.1 \
        libopencv-calib3d3.4=3.4.1-bionic1.1 \
        libopencv-core-dev=3.4.1-bionic1.1 \
        libopencv-core3.4=3.4.1-bionic1.1 \
        libopencv-dev=3.4.1-bionic1.1 \
        libopencv-dnn-dev=3.4.1-bionic1.1 \
        libopencv-dnn3.4-dbg=3.4.1-bionic1.1 \
        libopencv-dnn3.4=3.4.1-bionic1.1 \
        libopencv-features2d-dev=3.4.1-bionic1.1 \
        libopencv-features2d3.4-dbg=3.4.1-bionic1.1 \
        libopencv-features2d3.4=3.4.1-bionic1.1 \
        libopencv-flann-dev=3.4.1-bionic1.1 \
        libopencv-flann3.4-dbg=3.4.1-bionic1.1 \
        libopencv-flann3.4=3.4.1-bionic1.1 \
        libopencv-highgui-dev=3.4.1-bionic1.1 \
        libopencv-highgui3.4-dbg=3.4.1-bionic1.1 \
        libopencv-highgui3.4=3.4.1-bionic1.1 \
        libopencv-imgcodecs-dev=3.4.1-bionic1.1 \
        libopencv-imgcodecs3.4-dbg=3.4.1-bionic1.1 \
        libopencv-imgcodecs3.4=3.4.1-bionic1.1 \
        libopencv-imgproc-dev=3.4.1-bionic1.1 \
        libopencv-imgproc3.4-dbg=3.4.1-bionic1.1 \
        libopencv-imgproc3.4=3.4.1-bionic1.1 \
        libopencv-ml-dev=3.4.1-bionic1.1 \
        libopencv-ml3.4-dbg=3.4.1-bionic1.1 \
        libopencv-ml3.4=3.4.1-bionic1.1 \
        libopencv-objdetect-dev=3.4.1-bionic1.1 \
        libopencv-objdetect3.4-dbg=3.4.1-bionic1.1 \
        libopencv-objdetect3.4=3.4.1-bionic1.1 \
        libopencv-photo-dev=3.4.1-bionic1.1 \
        libopencv-photo3.4-dbg=3.4.1-bionic1.1 \
        libopencv-photo3.4=3.4.1-bionic1.1 \
        libopencv-shape-dev=3.4.1-bionic1.1 \
        libopencv-shape3.4-dbg=3.4.1-bionic1.1 \
        libopencv-shape3.4=3.4.1-bionic1.1 \
        libopencv-stitching-dev=3.4.1-bionic1.1 \
        libopencv-stitching3.4-dbg=3.4.1-bionic1.1 \
        libopencv-stitching3.4=3.4.1-bionic1.1 \
        libopencv-superres-dev=3.4.1-bionic1.1 \
        libopencv-superres3.4-dbg=3.4.1-bionic1.1 \
        libopencv-superres3.4=3.4.1-bionic1.1 \
        libopencv-ts-dev=3.4.1-bionic1.1 \
        libopencv-video-dev=3.4.1-bionic1.1 \
        libopencv-video3.4-dbg=3.4.1-bionic1.1 \
        libopencv-video3.4=3.4.1-bionic1.1 \
        libopencv-videoio-dev=3.4.1-bionic1.1 \
        libopencv-videoio3.4-dbg=3.4.1-bionic1.1 \
        libopencv-videoio3.4=3.4.1-bionic1.1 \
        libopencv-videostab-dev=3.4.1-bionic1.1 \
        libopencv-videostab3.4-dbg=3.4.1-bionic1.1 \
        libopencv-videostab3.4=3.4.1-bionic1.1 \
        libopencv-viz-dev=3.4.1-bionic1.1 \
        libopencv-viz3.4-dbg=3.4.1-bionic1.1 \
        libopencv-viz3.4=3.4.1-bionic1.1 \
        libopencv3.4-java=3.4.1-bionic1.1 \
        opencv-data=3.4.1-bionic1.1 \
        opencv-doc=3.4.1-bionic1.1 \
        python-opencv=3.4.1-bionic1.1 
RUN cd /tmp; git clone --depth 1 --branch v2.5.0 https://github.com/pybind/pybind11.git \
    && cd pybind11 \
    && mkdir build \
    && cd build \
    && cmake -DPYBIND11_TEST=OFF  .. \
    && make \
    && make install \
    && chmod 777 /usr/lib/python3/dist-packages

RUN /workspace/Vitis-AI/src/vai_runtime/unilog/cmake.sh --clean
RUN /workspace/Vitis-AI/src/vai_runtime/xir/cmake.sh --clean
RUN /workspace/Vitis-AI/src/vai_runtime/target_factory/cmake.sh --clean
#RUN /workspace/Vitis-AI/src/vai_runtime/vart/cmake.sh --clean
ENV SKLEARN_ALLOW_DEPRECATED_SKLEARN_PACKAGE_INSTALL=True
RUN cd /workspace/Vitis-AI/src/vai_quantizer/vai_q_pytorch/pytorch_binding && python setup.py bdist_wheel -d . && pip install ./pytorch_nndct-*.whl 
ENV CUDA_HOME=/usr/local/cuda 
