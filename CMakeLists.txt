# ====================================================================
# Cmake
# ====================================================================
cmake_minimum_required(VERSION 3.8)

# ====================================================================
# Set up for Arduino version and speed
# ====================================================================
set(CMAKE_ARDUINO_MCU atmega328p)
set(CMAKE_ARDUINO_FREQ 16000000UL)
set(CMAKE_TOOLCHAIN_FILE cmake/arduino_toolchain.txt)

# ====================================================================
# Project Options
# ====================================================================
project(PWM)

set(CMAKE_MODULE_PATH cmake)

add_subdirectory(src)
