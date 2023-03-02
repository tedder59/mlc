FROM nvcr.io/nvidia/pytorch:22.03-py3
WORKDIR /workspace
ADD relax /workspace/relax
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y libtinfo-dev zlib1g-dev libedit-dev libxml2-dev llvm
RUN cd relax && mkdir build && cp cmake/config.cmake build && cd build && cmake .. -G Ninja && ninja && cd ../..
ENV TVM_HOME=/workspace/relax
ENV PYTHONPATH=$TVM_HOME/python
RUN pip install numpy decorator attrs typing-extensions tornado psutil 'xgboost<1.6.0' cloudpickle black==22.3.0