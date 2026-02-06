#include <iostream>
#include "scream.h"
#include "kernel1.h"

int main()
{
    std::cout << "Hello, World!" << std::endl;
    
    // Example Function
    scream();

    // Example Kernel Call
    runKernel1();

    return 0;
}  