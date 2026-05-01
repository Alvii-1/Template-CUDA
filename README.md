I built this template with the idea of a minimal CUDA project setup. Just CMake, CUDA, and C++. Feel free to re-use for your own project, its pretty barebones by design.

## How to compile and run the project:

If this is the C++/CUDA template, please copy the entire folder, rename it, and continue.

Note: 
- Update any mention of "project" in the CMakeLists.txt file
- Simply use ```git clone https://github.com/Alvii-1/Template-CUDA.git``` to clone the repository locally

Organization:
- /src: main c++ files
- /include: header files, both c++ and cu declarations
- /kernels: all GPU code files

### Immediately After Cloning
After running git clone in your specified directory, run rm -r -fo .git to remove previous git files. Then you're good to go with using the template.

### Running the Manual Way
1. Open VS Code
2. Click the dropdown arrow by the terminal, select "Command Prompt"
3. Type "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" into cmd
4. To compile code "cl main.cpp" to run it "main.exe"

### Running CMake Way
1. Ensure the CMakeLists.txt is properly updated with a new project name
2. Type "cmake -S . -B build" into PS to configure the project
3. Type "cmake --build build" into PS to build the project
4. Type ".\build\Debug\project.exe" to run the project, make sure to change "project" to match txt


### Running With Powershell Function (Simplest)
1. Type ".\run.ps1" in the terminal and it should accomplish everything from CMake


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







