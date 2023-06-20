cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE Debug)
set(DCMAKE_BUILD_TYPE Debug)

project(Curve_fitting)
find_package(Eigen3 REQUIRED)
find_package(OpenCV 3 REQUIRED)
find_package(Ceres REQUIRED)
#find_package(G2O REQUIRED)
include_directories(
${OpenCV_INCLUDE_DIRS}
${EIGEN3_INCLUDE_DIRS}
${CERES_INCLUDE_DIRS}
)

##g2o 得自己写个FindG2O.cmake文件,才能像下面一样写
# find_package(G2O REQUIRED)
# include_directories(${G2O_INCLUDE_DIRS})
# target_link_libraries(${PROJECT_NAME} ${G2O_CORE_LIBRARY} ${G2O_STUFF_LIBRARY})

#g20 直接法
# include_directories("/usr/local/include/g2o")


# 添加您的可执行文件或库
add_executable(GN GN.cpp)
add_executable(Ceres_GN GN_ceres.cpp)
# add_executable(G20_GN GN_g2o.cpp)
add_executable(Least_SQUARE least_square.cpp)
add_executable(RANSAC_least_square Ransac_least_square.cpp)

target_link_libraries(Least_SQUARE ${OpenCV_LIBS})
target_link_libraries(RANSAC_least_square ${OpenCV_LIBS})
target_link_libraries(GN ${OpenCV_LIBS})
target_link_libraries(Ceres_GN ceres )

# target_link_libraries(G20_GN,"usr/local/lib/g2o_core")