# ros-kinetic-colcon
With nubonetics/ros-kinetic-colcon docker image, you can make colcon bundles for your ROS1 projects. Below, we will build and bundle the hello world simulation workspace from AWS RoboMaker:

* Clone the repository in your local machine: 

`git clone https://github.com/aws-robotics/aws-robomaker-sample-application-helloworld.git`

* Run ros-kinetic-colcon docker image: 

`docker run -it -v $(pwd):/workspace nubonetics/ros-kinetic-colcon /bin/bash`

* In the docker image, go to the workspace folder: 

`cd aws-robomaker-sample-application-helloworld/simulation_w`

* Run the following commands to update and install dependencies:

`apt-get update`

`rosdep update`

`rosws update`

`rosdep install --from-paths src --ignore-src -r -y`

* Build the workspace:

`colcon build`

* Bundle the workspace:

`source install/local_setup.sh`

`colcon bundle --bundle-version 1`
