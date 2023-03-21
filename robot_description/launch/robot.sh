#!/bin/sh

xterm -e "roslaunch robot_description gazebo.launch" &

sleep 10

xterm  -e  "roslaunch robot_description navigation.launch " &



