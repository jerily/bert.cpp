include_directories(../ggml/include ../)
link_directories(../build ../build/ggml/src)
add_executable(quantize quantize.cpp)
target_link_libraries(quantize PRIVATE bert ggml)

