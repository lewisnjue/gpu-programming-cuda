#include <cuda_runtime.h>
#include <iostream>
//__global__ means this function will run on the device
__global__ void hello_world(){
        int tid = threadIdx.x + blockIdx.x * blockDim.x;
        printf("Hello, world! Thread %d\n",tid);
}

int main(){
        hello_world<<<1,10>>>(); // we will run one block with 10 threads
        cudaDeviceSynchronize(); // because the divice code is aync we need to wait for it to finish
        return 0;
        }

