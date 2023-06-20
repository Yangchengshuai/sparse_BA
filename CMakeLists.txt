cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE Debug)
set(DCMAKE_BUILD_TYPE Debug)

project(Curve_fitting)
find_package(Eigen3 REQUIRED)
find_package(OpenCV 3 REQUIRED)
include_directories(
${OpenCV_INCLUDE_DIRS}
${EIGEN3_INCLUDE_DIRS})
# 查找Eigen库


# 添加您的可执行文件或库
add_executable(GN GN.cpp)

add_executable(Least_SQUARE least_square.cpp)
add_executable(RANSAC_least_square Ransac_least_square.cpp)

target_link_libraries(Least_SQUARE ${OpenCV_LIBS})
target_link_libraries(RANSAC_least_square ${OpenCV_LIBS})
target_link_libraries(GN ${OpenCV_LIBS})
