#!/bin/bash
## please give the path to the private key to add as argument
sudo chmod 400 $1
eval `ssh-agent -s`
ssh-add $1
