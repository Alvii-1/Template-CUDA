#include <cuda_runtime.h>
#include "kernel1.cuh"

__global__ void helloKernel()
{
    printf("Hello from GPU kernel!\n");
}

void runKernel1()
{
    helloKernel<<<1,1>>>();
    cudaDeviceSynchronize();
}
