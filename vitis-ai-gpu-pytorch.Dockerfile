FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

RUN rm /etc/apt/sources.list.d/cuda.list \
 && rm /etc/apt/sources.list.d/nvidia-ml.list
RUN apt-get update -y \
 && apt install -y --no-install-recommends apt-transport-https \
 && apt install -y --no-install-recommends autoconf \
 && apt install -y --no-install-recommends automake \
 && apt install -y --no-install-recommends bc \
 && apt install -y --no-install-recommends build-essential \
 && apt install -y --no-install-recommends bzip2 \
 && apt install -y --no-install-recommends ca-certificates \
 && apt install -y --no-install-recommends curl \
 && apt install -y --no-install-recommends g++ \
 && apt install -y --no-install-recommends gdb \
 && apt install -y --no-install-recommends git \
 && apt install -y --no-install-recommends gnupg \
 && apt install -y --no-install-recommends locales \
 && ln -fs /usr/share/zoneinfo/Europe/Ljubljana /etc/localtime \
 && apt install -y --no-install-recommends tzdata \
 && apt install -y --no-install-recommends libboost-all-dev \
 && apt install -y --no-install-recommends libgflags-dev \
 && apt install -y --no-install-recommends libgoogle-glog-dev \
 && apt install -y --no-install-recommends libgtest-dev \
 && apt install -y --no-install-recommends libjsoncpp-dev \ 
 && apt install -y --no-install-recommends libssl-dev \
 && apt install -y --no-install-recommends libtool \
 && apt install -y --no-install-recommends libunwind-dev \
 && apt install -y --no-install-recommends make \
 && apt install -y --no-install-recommends openssh-client \
 && apt install -y --no-install-recommends openssl \
 && apt install -y --no-install-recommends python3 \
 && apt install -y --no-install-recommends python3-dev \
 && apt install -y --no-install-recommends python3-minimal \
 && apt install -y --no-install-recommends python3-numpy \
 && apt install -y --no-install-recommends python3-opencv \
 && apt install -y --no-install-recommends python3-pip \
 && apt install -y --no-install-recommends python3-setuptools \
 && apt install -y --no-install-recommends python3-venv \
 && apt install -y --no-install-recommends software-properties-common \
 && apt install -y --no-install-recommends sudo \
 && apt install -y --no-install-recommends tree \
 && apt install -y --no-install-recommends unzip \
 && apt install -y --no-install-recommends vim \
 && apt install -y --no-install-recommends wget \
 && apt install -y --no-install-recommends yasm \
 && apt install -y --no-install-recommends zstd \
 && apt install -y --no-install-recommends libavcodec-dev \
 && apt install -y --no-install-recommends libavformat-dev \
 && apt install -y --no-install-recommends libeigen3-dev \
 && apt install -y --no-install-recommends libgstreamer-plugins-base1.0-dev \
 && apt install -y --no-install-recommends libgstreamer1.0-dev \
 && apt install -y --no-install-recommends libgtest-dev \
 && apt install -y --no-install-recommends libgtk-3-dev \
 && apt install -y --no-install-recommends libgtk2.0-dev \
 && apt install -y --no-install-recommends libhdf5-dev \
 && apt install -y --no-install-recommends libjpeg-dev \
 && apt install -y --no-install-recommends libopenexr-dev \
 && apt install -y --no-install-recommends libpng-dev \
 && apt install -y --no-install-recommends libswscale-dev \
 && apt install -y --no-install-recommends libtiff-dev \
 && apt install -y --no-install-recommends libwebp-dev \
 && apt install -y --no-install-recommends opencl-clhpp-headers \
 && apt install -y --no-install-recommends opencl-headers \
 && apt install -y --no-install-recommends pocl-opencl-icd \
 && apt install -y --no-install-recommends python3-opencv \
 && apt install -y --no-install-recommends python3-pip \
 && apt install -y --no-install-recommends python3-setuptools \
 && apt install -y --no-install-recommends python3-venv \
 && apt install -y --no-install-recommends software-properties-common \
 && apt install -y --no-install-recommends sudo \
 && apt install -y --no-install-recommends tree \
 && apt install -y --no-install-recommends unzip \
 && apt install -y --no-install-recommends vim \
 && apt install -y --no-install-recommends wget \
 && apt install -y --no-install-recommends yasm \
 && apt install -y --no-install-recommends zstd \
 && apt install -y --no-install-recommends libavcodec-dev \
 && apt install -y --no-install-recommends libavformat-dev \
 && apt install -y --no-install-recommends libeigen3-dev \
 && apt install -y --no-install-recommends libgstreamer-plugins-base1.0-dev \
 && apt install -y --no-install-recommends libgstreamer1.0-dev \
 && apt install -y --no-install-recommends libgtest-dev \
 && apt install -y --no-install-recommends libgtk-3-dev \
 && apt install -y --no-install-recommends libgtk2.0-dev \
 && apt install -y --no-install-recommends libhdf5-dev \
 && apt install -y --no-install-recommends libjpeg-dev \
 && apt install -y --no-install-recommends libopenexr-dev \
 && apt install -y --no-install-recommends libpng-dev \
 && apt install -y --no-install-recommends libswscale-dev \
 && apt install -y --no-install-recommends libtiff-dev \
 && apt install -y --no-install-recommends libwebp-dev \
 && apt install -y --no-install-recommends opencl-clhpp-headers \
 && apt install -y --no-install-recommends opencl-headers \
 && apt install -y --no-install-recommends ffmpeg \
 && apt install -y --no-install-recommends pocl-opencl-icd 

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test \
 && apt update \
 && apt install -y --no-install-recommends g++-11 \
 && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 30 \
 && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 30 \
 && update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-11 30 

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
RUN /workspace/Vitis-AI/src/vai_runtime/xir/cmake.sh --clean --build-python
RUN /workspace/Vitis-AI/src/vai_runtime/target_factory/cmake.sh --clean --cmake-options=-DBUILD_PYTHON=ON
#RUN /workspace/Vitis-AI/src/vai_runtime/vart/cmake.sh --clean

ENV SKLEARN_ALLOW_DEPRECATED_SKLEARN_PACKAGE_INSTALL=True
RUN cd /workspace/Vitis-AI/src/vai_quantizer/vai_q_pytorch/pytorch_binding && python setup.py bdist_wheel -d . && pip install ./pytorch_nndct-*.whl 
ENV CUDA_HOME=/usr/local/cuda
RUN cd /tmp && wget -O conda-channel.tar.gz https://www.xilinx.com/bin/public/openDownload?filename=conda-channel-3.0.tar.gz
RUN cd /tmp && tar -xvzf conda-channel.tar.gz
RUN  conda config --env --append channels file:///tmp/conda-channel \
  && conda install -y -c conda-forge gxx_linux-64==11.1.0 \
  && conda install -y -n base --override-channels -c conda-forge mamba 'python_abi=*=*cp*'
RUN sed -i "s/- pip://g" /workspace/Vitis-AI/docker/conda/gpu_conda/vitis-ai-pytorch.yml \
 && sed -i "s/- pip//g" /workspace/Vitis-AI/docker/conda/gpu_conda/vitis-ai-pytorch.yml \
 && sed -i "s/- ck//g" /workspace/Vitis-AI/docker/conda/gpu_conda/vitis-ai-pytorch.yml \
 && sed -i "s/- orderedset//g" /workspace/Vitis-AI/docker/conda/gpu_conda/vitis-ai-pytorch.yml \
 && sed -i "s/- opencv-contrib-python//g" /workspace/Vitis-AI/docker/conda/gpu_conda/vitis-ai-pytorch.yml
RUN mamba env update -f /workspace/Vitis-AI/docker/conda/gpu_conda/vitis-ai-pytorch.yml
RUN conda init
#RUN conda activate vitis-ai-pytorch
