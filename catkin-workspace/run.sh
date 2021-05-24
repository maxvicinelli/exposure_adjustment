echo Here we go 

catkin_make

sudo sh -c "echo 1000 > /sys/module/usbcore/parameters/usbfs_memory_mb"


source devel/setup.bash

roslaunch droplet_underwater_assembly stag.launch standalone:="true" acquisition:="true"

