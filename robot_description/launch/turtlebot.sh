#!/bin/sh

xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find robot_description)/worlds/Office.world" &

sleep 10

xterm  -e  "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(rospack find robot_description)/maps/map.yaml" &


sleep 5

xterm  -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" 
