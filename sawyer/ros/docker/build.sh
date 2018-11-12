#! /bin/bash

DEVICE=${1:-"cpu"}

if [ "$DEVICE" = "cpu" ] ; then
	echo "Building sawyer-ros-docker with cpu..." ;
	docker build -f ./sawyer/ros/docker/sawyer/Dockerfile.cpu \
  		-t sawyer-ros-docker:cpu . ;
else
	echo "Building sawyer-ros-docker with gpu..." ;
	docker build -f ./sawyer/ros/docker/sawyer/Dockerfile.gpu \
		-t sawyer-ros-docker:gpu . ;
fi
