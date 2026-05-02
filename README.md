I built this template with the idea of a minimal CUDA project setup. Just CMake, CUDA, and C++. Feel free to re-use for your own project, its pretty barebones by design. This is only for Windows and the MSVC compiler.

## How to Compile and Run the Project:

Note: 
- Update any mention of "project" in the CMakeLists.txt file for organization of your project
- Simply use ```git clone https://github.com/Alvii-1/Template-CUDA.git .``` to clone the repository locally
- Rebuilding the project can be done with ```cleanrun.ps1``` instead of just ```run.ps1```

Organization:
- /src: main c++ files
- /include: header files, both c++ and cu declarations
- /kernels: all GPU code files

### Immediately After Cloning
After running git clone in your specified directory, run ```rm -r -fo .git``` to remove the template's existing git history. Then you're good to go with using the template. This way you have a fresh git history after cloning.

### Running CMake Way
1. Ensure the CMakeLists.txt is properly updated with a new project name
2. Type ```cmake -S . -B build``` into PS to configure the project
3. Type ```cmake --build build``` into PS to build the project
4. Type ```.\build\Debug\project.exe``` to run the project, make sure to change "project" to something more descriptive


### Running With Powershell Function (Simplest)
1. Type ```.\run.ps1``` in the terminal and it should accomplish everything from CMake


### Details on .vscode/c_cpp_properties.json
```
{
    "configurations": [
        {
            "name": "Win32",
            "includePath": [
                "${workspaceFolder}/include/**",
                "${workspaceFolder}/src/**"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE"
            ],
            "windowsSdkVersion": "10.0.26100.0",
            "cStandard": "c17",
            "cppStandard": "c++17",
            "intelliSenseMode": "windows-msvc-x64"
        }
    ],
    "version": 4
}
```







