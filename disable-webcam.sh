#!/bin/bash
# https://askubuntu.com/questions/747212/how-to-disable-integrated-webcam-on-ubuntu
echo 3-6 | sudo tee /sys/bus/usb/drivers/usb/unbind
