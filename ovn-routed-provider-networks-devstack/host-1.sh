#!/usr/bin/env bash

set -x

source /vagrant/utils/common-functions

sudo ip link add link eth1 name eth1.100 type vlan id 100
sudo ip link set dev eth1.100 up
sudo ip a d 172.24.4.14/24 dev eth1
sudo ip a a 172.24.4.14/24 dev eth1.100
