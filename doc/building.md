## Building

### Create bin/app.exe

Our build is done using cmake, which will generate specific platform build files. See [CMake.org](cmake.org).

Ill give my use case for example  

We will build the code using our own gnu installation for windows.  
By default, cmake will recognize MSVC as the compiler, so cmake will generate visual c++ project. But, we want to create a Makefile, to be used with our own MinGW installation, so we will change it's behaviour specifying a specific cmake generator.

Check which generators are supported by the platform (Make sure that "MinGW Makefiles" is there)  
```cmake --help```  

Assuming that g++ and gcc are at C:/MinGW/bin/g++.exe and C:/MinGW/bin/gcc.exe accordingly, run (from project root)  
```cmake -G "MinGW Makefiles" -D CMAKE_CXX_COMPILER="C:/MinGW/bin/g++.exe" -D CMAKE_C_COMPILER="C:/MinGW/bin/gcc.exe" .```

See that there is a file "./Makefile" and run your ```make``` script on it on it.  
> If we don't have ```make``` in the command line (other installation), we can use ```mingw32-make``` which is at our gnu installation ("C:/MinGW/bin/mingw32-make.exe").  
Either set "C:/MinGW/bin" in the PATH env or run ```C:/MinGW/bin/mingw32-make.exe``` in the command line.

```bin/app.exe``` is now available for exection
