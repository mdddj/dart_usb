# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(dart_usb_library VERSION 0.0.1 LANGUAGES C)

add_library(dart_usb SHARED
  "dart_usb.c"
)

set_target_properties(dart_usb PROPERTIES
  PUBLIC_HEADER dart_usb.h
  OUTPUT_NAME "dart_usb"
)

target_compile_definitions(dart_usb PUBLIC DART_SHARED_LIB)
