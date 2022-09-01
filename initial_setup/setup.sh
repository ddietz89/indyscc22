#!/bin/bash

# Copy our etc hosts over. Make sure you grab the versino you just made.
cp hosts /etc/

# Make a list of packages you may need. I like having vim... the others are bare minimum. 
# I recommend adding others as you find you need here so if you need to reinstall you're not losing anything.
yum install vim -y
yum install nfs-utils -y
yum install tk tcl tcsh -y

mkdir -p /apps

# /etc/fstab tells the OS what to mount
echo "login:/home /home nfs defaults 0 0" >> /etc/fstab
echo "login:/apps /apps nfs defaults 0 0" >> /etc/fstab

mount -a

# Need to set a few things here to make slurm work
# Also having stack size set to unlimited is important. Super super common to run into problems without it.
cp limits.conf /etc/security/
