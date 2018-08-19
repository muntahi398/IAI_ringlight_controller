# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "iai_ringlight: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iiai_ringlight:/home/muntahi/catkin_ws/src/iai_ringlight/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(iai_ringlight_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" NAME_WE)
add_custom_target(_iai_ringlight_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_ringlight" "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" ""
)

get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" NAME_WE)
add_custom_target(_iai_ringlight_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "iai_ringlight" "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_ringlight
)

### Generating Services
_generate_srv_cpp(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_ringlight
)

### Generating Module File
_generate_module_cpp(iai_ringlight
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_ringlight
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(iai_ringlight_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(iai_ringlight_generate_messages iai_ringlight_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_cpp _iai_ringlight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_cpp _iai_ringlight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_ringlight_gencpp)
add_dependencies(iai_ringlight_gencpp iai_ringlight_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_ringlight_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_ringlight
)

### Generating Services
_generate_srv_eus(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_ringlight
)

### Generating Module File
_generate_module_eus(iai_ringlight
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_ringlight
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(iai_ringlight_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(iai_ringlight_generate_messages iai_ringlight_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_eus _iai_ringlight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_eus _iai_ringlight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_ringlight_geneus)
add_dependencies(iai_ringlight_geneus iai_ringlight_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_ringlight_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_ringlight
)

### Generating Services
_generate_srv_lisp(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_ringlight
)

### Generating Module File
_generate_module_lisp(iai_ringlight
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_ringlight
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(iai_ringlight_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(iai_ringlight_generate_messages iai_ringlight_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_lisp _iai_ringlight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_lisp _iai_ringlight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_ringlight_genlisp)
add_dependencies(iai_ringlight_genlisp iai_ringlight_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_ringlight_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_ringlight
)

### Generating Services
_generate_srv_nodejs(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_ringlight
)

### Generating Module File
_generate_module_nodejs(iai_ringlight
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_ringlight
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(iai_ringlight_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(iai_ringlight_generate_messages iai_ringlight_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_nodejs _iai_ringlight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_nodejs _iai_ringlight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_ringlight_gennodejs)
add_dependencies(iai_ringlight_gennodejs iai_ringlight_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_ringlight_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_ringlight
)

### Generating Services
_generate_srv_py(iai_ringlight
  "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_ringlight
)

### Generating Module File
_generate_module_py(iai_ringlight
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_ringlight
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(iai_ringlight_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(iai_ringlight_generate_messages iai_ringlight_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/msg/Num.msg" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_py _iai_ringlight_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muntahi/catkin_ws/src/iai_ringlight/srv/iai_ringlight_in.srv" NAME_WE)
add_dependencies(iai_ringlight_generate_messages_py _iai_ringlight_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(iai_ringlight_genpy)
add_dependencies(iai_ringlight_genpy iai_ringlight_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS iai_ringlight_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_ringlight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/iai_ringlight
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(iai_ringlight_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_ringlight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/iai_ringlight
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(iai_ringlight_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_ringlight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/iai_ringlight
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(iai_ringlight_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_ringlight)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/iai_ringlight
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(iai_ringlight_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_ringlight)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_ringlight\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/iai_ringlight
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(iai_ringlight_generate_messages_py std_msgs_generate_messages_py)
endif()
