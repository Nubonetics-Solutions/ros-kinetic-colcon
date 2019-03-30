FROM ros:kinetic-ros-base
MAINTAINER Behzad Samadi bsamadi@nubonetics.com

# metadata
LABEL version="0.1"
LABEL description="ROS Kinetic colcon"

RUN apt-get update && apt-get install -y python3-pip python3-apt && pip3 install --upgrade pip
RUN export PATH=/usr/local/bin/pip3:$PATH

ENV WORKSPACE=/workspace
RUN mkdir -p $WORKSPACE/colcon
WORKDIR $WORKSPACE/colcon
RUN git clone https://github.com/colcon/colcon-core.git
RUN git clone https://github.com/colcon/colcon-ros.git
RUN git clone https://github.com/colcon/colcon-bundle
RUN git clone https://github.com/colcon/colcon-ros-bundle
RUN /usr/local/bin/pip3 install --editable ./colcon-bundle
RUN /usr/local/bin/pip3 install --editable ./colcon-ros-bundle

RUN mkdir -p $WORKSPACE/src
WORKDIR $WORKSPACE/src
