#!/bin/bash

# to combine for the T4 gpu use the arch argument like this for example 
nvcc -arch=sm_75 hello.cu -o hello
