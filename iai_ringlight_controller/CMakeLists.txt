cmake_minimum_required(VERSION 2.8.3)
project(iai_ringlight_controller)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

## Build service client and server
add_executable(ringlight_server src/ringlight_server.cpp)
target_link_libraries(ringlight_server ${catkin_LIBRARIES})

add_executable(ringlight_client src/ringlight_client.cpp)
target_link_libraries(ringlight_client ${catkin_LIBRARIES})
