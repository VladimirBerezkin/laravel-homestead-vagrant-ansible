#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.


# Install ansible and his dependencies

# fix for Blackfire repository issue
sudo rm /etc/apt/sources.list.d/blackfire.list

sudo apt update -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y