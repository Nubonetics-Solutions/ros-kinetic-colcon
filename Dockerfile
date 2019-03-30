FROM ros:kinetic-ros-base
MAINTAINER Behzad Samadi bsamadi@nubonetics.com

# metadata
LABEL version="0.1"
LABEL description="ROS Kinetic colcon"

RUN apt-get update && \
    apt-get install -y python3-pip python3-apt && \
    pip3 install -U setuptools && \
    pip3 install -U colcon-common-extensions colcon-ros-bundle

ENV WORKSPACE=/workspace
RUN mkdir -p $WORKSPACE/src
WORKDIR $WORKSPACE/src
