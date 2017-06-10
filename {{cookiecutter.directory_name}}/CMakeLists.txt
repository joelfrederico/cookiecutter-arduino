# ====================================================================
# Cmake
# ====================================================================
cmake_minimum_required(VERSION 3.8)
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules)
include(avrdude)

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

# ====================================================================
# Add stuff
# ====================================================================
add_subdirectory(src)

avrprogram(Mine)
