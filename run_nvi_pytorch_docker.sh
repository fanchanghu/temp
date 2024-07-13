#!/bin/sh

docker run --name mydev -ti -d -u 1000:1000 --network host --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -v /etc/passwd:/etc/passwd:ro -v /home/hu:/home/hu nvcr.io/nvidia/pytorch:23.03-py3 bash

