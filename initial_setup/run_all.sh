#!/bin/bash

cd /tmp/initial_setup
./setup.sh
./users.sh

# The home directories are now mounted, and are on top of the local home directory. Let's re-cd into the directory to update...
cd ~cc/slurm_setup/

./01_users.sh
./02_munge.sh
./03_rpms.sh
./04_slurm.sh
