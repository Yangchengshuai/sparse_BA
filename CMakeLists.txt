cmake_minimum_required(VERSION 2.8)
SET(CMAKE_BUILD_TYPE Release)
project(Curve_fitting)
find_package(Eigen3 REQUIRED)
find_package(OpenCV 3 REQUIRED)
find_package(Ceres REQUIRED)
find_package(G2O REQUIRED)
# include_directories("/usr/local/include/g2o")


#g20 直接法
include_directories(${G2O_INCLUDE_DIR} "/usr/local/include/g2o")
add_executable(G20_GN GN_g2o.cpp)
target_link_libraries(G20_GN ${OpenCV_LIBS} ${G2O_CORE_LIBRARY} ${G2O_STUFF_LIBRARY})
include_directories(
${OpenCV_INCLUDE_DIRS}
${EIGEN3_INCLUDE_DIRS}
${CERES_INCLUDE_DIRS}
)
# 添加您的可执行文件或库
add_executable(GN GN.cpp)
add_executable(Ceres_GN GN_ceres.cpp)

add_executable(Least_SQUARE least_square.cpp)
add_executable(RANSAC_least_square Ransac_least_square.cpp)

target_link_libraries(Least_SQUARE ${OpenCV_LIBS})
target_link_libraries(RANSAC_least_square ${OpenCV_LIBS})
target_link_libraries(GN ${OpenCV_LIBS})
target_link_libraries(Ceres_GN ceres ${OpenCV_LIBS})
