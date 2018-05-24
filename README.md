# docker-cpp-env

Minimal C++ development environment including gcc, CMake and conan, using Alpine Linux

## Caveats

The working directory is set to `/porject` and this is a folder that should be mounted from your host system to the docker image.

The image exposes as entrypoint the command `bash -c`, which allows you to give a sequence of commands, all included in quotation symbols (`""`) and let bash execute them. Alternatively, you can override the entrypoint by passing `--entrypoint whatever_you_want` as argument to `docker` command.

## Usage Examples

### conan based projects

`docker run --rm -it -v $(pwd):/project madduci/docker-cpp-env:latest "mkdir -p build && cd build && conan install .. && cmake .. && make"`

### CMake based projects

`docker run --rm -it -v $(pwd):/project madduci/docker-cpp-env:latest "mkdir -p build && cd build && cmake .. && make"`

### Makefile based projects

`docker run --rm -it -v $(pwd):/project madduci/docker-cpp-env:latest "make"`

### g++ based projects

`docker run --rm -it -v $(pwd):/project madduci/docker-cpp-env:latest "g++ yourfile.cpp youroutput.o"`

### Shell Access

`docker run --rm -it --entrypoint bash -v $(pwd):/project madduci/docker-cpp-env:latest`