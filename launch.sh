#!/bin/bash
docker run -it --rm --gpus=all --ipc=host\
 --ulimit memlock=-1\
 --ulimit stack=67108864\
 --net=host\
 -v $PWD:/workspace/mlc\
 --name=mlc\
 tedder/mlc:0.0\
 bash -c "cd mlc && jupyter notebook"