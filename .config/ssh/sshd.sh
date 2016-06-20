#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ ! -f $DIR/ssh_host_rsa_key ]]; then
	ssh-keygen -f $DIR/ssh_host_rsa_key -N '' -t rsa
fi

$DIR/sshd -eD -f $DIR/sshd_config -h $DIR/ssh_host_rsa_key $* 
