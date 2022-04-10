cmake_minimum_required(VERSION 3.0.2)
project(cpp_package)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
)

catkin_package()

include_directories(
    ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}_node src/talker.cpp)


target_link_libraries(${PROJECT_NAME}_node
    ${catkin_LIBRARIES}
)
