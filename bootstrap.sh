#!/bin/bash

# Specify node
if [[ -z $1 ]]; then
	echo "Usage: $0 NODE"
	exit 1
fi

scp -i ~/.ssh/id_rsa.indy_scc -r initial_setup/ $1:/tmp/

ssh -i ~/.ssh/id_rsa.indy_scc $1 "cd /tmp/initial_setup/ && sudo ./run_all.sh"
