# Take the RPMs you built earlier and drop here, or change the cd below.
cd /home/cc/slurm_setup/rpms

yum --nogpgcheck localinstall slurm-* -y
