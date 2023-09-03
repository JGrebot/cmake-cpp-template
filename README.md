# cmake-cpp-template
Compilation template for cmake, using fetched googletest library. Allow building
an executable, a library or just the tests. Compilation for doxygen is
available. Commands for code formating with clang-format are available.

## Compilation
First set the compilation option in cmake/Option.cmake (an executable, a
library and/or the test). Then type
```bash
mkdir build && cd build && cmake .. && make -j 2
```


## Doxygen
On Ubuntu, install with:
```bash
sudo apt install doxygen
```
Enable Doxygen documentation build of source (see cmake/Option.cmake) and compile.
Then, in the build directory, type 
```bash
doxygen Doxyfile.doxygen-docs
```
Go to the created docs folder and open the index.html file in a browser.


## clang format
On Ubuntu, install clang and clang-format with:
```bash
sudo apt install clang && sudo apt install clang-format
```

With clang-format, format the code using:
```bash
find . -type f \( -name "*.cpp" -o -name "*.hpp" \) -exec clang-format -i {} \;
```
in the main directory.


## C4core submodule
See https://github.com/biojppm/c4core for details on the c4core
library. This library is not compiled by default, but added as a
submodule, if necessary.

To clone it, type:
git submodule update --init --recursive

Then uncomment the line 
```cmake
    add_subdirectory(external/c4core)
```
in the file cmake/Fetch.cmake. And the line 
```cmake
    target_link_libraries(${PROJECT_NAME} PUBLIC c4core)
```
in the file cmake/ExecutableAndBuildingLibrary.cmake.




## Others
Others available optionnal tools are:
    - cppcheck, 
    - clang-tidy, 
    - enabling code coverage (with gcc), 
    - use Ccache, 
    - generate compile_commands.json for clang based tools.




