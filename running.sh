#!/bin/bash

# to combine for the T4 gpu use the arch argument like this for example 
nvcc -arch=sm_75 hello.cu -o hello
# if you want to run in docker you can use this command 

docker run -it --rm --gpus all -v ./:/code nvidia/cuda:12.0.0-devel-ubuntu20.04 bash 


