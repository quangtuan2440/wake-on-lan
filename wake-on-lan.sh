#!/bin/bash

echo WAKING UP AND MINING!!!! > /proc/1/fd/1 2>/proc/1/fd/2
date > /proc/1/fd/1 2>/proc/1/fd/2

# RIG1
/usr/sbin/etherwake b8:97:5a:f5:0a:4c

# RIG2
/usr/sbin/etherwake b8:97:5a:f5:0b:62

# RIG3
/usr/sbin/etherwake b8:97:5a:f5:09:fd

# RIG4
/usr/sbin/etherwake b8:97:5a:f5:07:70

# RIG5
/usr/sbin/etherwake b8:97:5a:f5:08:28

# RIG6
/usr/sbin/etherwake -i enp3s0f1 b8:97:5a:f5:0c:24

# RIG7
/usr/sbin/etherwake b8:97:5a:f5:0a:64

# RIG8
/usr/sbin/etherwake -i enp3s0f1 b8:97:5a:f5:0c:24
