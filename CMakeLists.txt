set(CMAKE_TOOLCHAIN_FILE cmake/arduino_toolchain.txt)

project(PWM)

set(CMAKE_MODULE_PATH cmake)

add_subdirectory(src)
