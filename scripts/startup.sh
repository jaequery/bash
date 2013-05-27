#!/bin/bash

# sshfs
#sshfs_mounts=`df -h |grep :|wc -l`
#echo "There are $sshfs_mounts loaded"
#if [ $sshfs_mounts = "0" ];
#then
#/usr/local/bin/sshfs -o no_readahead,noappledouble,nolocalcaches jae@devjae:/home/jae/CODE_BASES/DEV/ /Users/jaequery/Sites/devjae/
#fi

/usr/local/bin/sshfs -o no_readahead,noappledouble,nolocalcaches jae@devjae:/home/jae/CODE_BASES/DEV/ /Users/jaequery/Sites/devjae/
