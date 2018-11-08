# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(iai_ringlight_controller)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
add_message_files(FILES Num.msg)
add_service_files(FILES iai_ringlight_in.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})

## Build service client and server
# %Tag(SRVCLIENT)%

add_executable(ringlight_server src/ringlight_server.cpp)
target_link_libraries(ringlight_server ${catkin_LIBRARIES})
add_dependencies(ringlight_server iai_ringlight_gencpp)

add_executable(ringlight_client src/ringlight_client.cpp)
target_link_libraries(ringlight_client ${catkin_LIBRARIES})
add_dependencies(ringlight_client iai_ringlight_gencpp)

# %EndTag(SRVCLIENT)%

# %EndTag(FULLTEXT)%
