# CMake generated Testfile for 
# Source directory: /home/terra/nav2_ws/src/nav2_system_tests/src/recoveries/wait
# Build directory: /home/terra/nav2_ws/build/nav2_system_tests/src/recoveries/wait
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_wait_recovery "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/terra/nav2_ws/build/nav2_system_tests/test_results/nav2_system_tests/test_wait_recovery.xml" "--package-name" "nav2_system_tests" "--generate-result-on-success" "--env" "TEST_MAP=/home/terra/nav2_ws/src/nav2_system_tests/maps/map_circular.yaml" "TEST_EXECUTABLE=/home/terra/nav2_ws/build/nav2_system_tests/src/recoveries/wait/test_wait_recovery_node" "TEST_WORLD=/home/terra/nav2_ws/src/nav2_system_tests/worlds/turtlebot3_ros2_demo.world" "GAZEBO_MODEL_PATH=/home/terra/nav2_ws/src/nav2_system_tests/models" "BT_NAVIGATOR_XML=navigate_w_replanning_and_recovery.xml" "--command" "/home/terra/nav2_ws/src/nav2_system_tests/src/recoveries/wait/test_wait_recovery_launch.py")
set_tests_properties(test_wait_recovery PROPERTIES  TIMEOUT "180" WORKING_DIRECTORY "/home/terra/nav2_ws/build/nav2_system_tests/src/recoveries/wait" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/home/terra/nav2_ws/src/nav2_system_tests/src/recoveries/wait/CMakeLists.txt;12;ament_add_test;/home/terra/nav2_ws/src/nav2_system_tests/src/recoveries/wait/CMakeLists.txt;0;")
