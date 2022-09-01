# Installs packages and sets permissions

yum install munge munge-libs munge-devel -y

#####
#####
# You will need to copy the key you created from the linked tutorial in your login's /etc/munge/
#####
#####

cp /home/cc/slurm_setup/munge.key /etc/munge

chown -R munge: /etc/munge/ /var/log/munge/ /var/lib/munge/ /run/munge/
chmod 0700 /etc/munge/ /var/log/munge/ /var/lib/munge/ /run/munge/
chmod 711 /run/munge/

systemctl enable munge
systemctl start munge

