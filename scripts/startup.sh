#!/bin/bash

# symlink mysql for Mamp mysql as mysql.sock is not in regular place
if [ ! -f /tmp/mysql.sock ]
then
sudo ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp
fi

# sshfs
sshfs_mounts=`df -h |grep :|wc -l`
if [ $sshfs_mounts = "0" ];
then
/usr/local/bin/sshfs -o no_readahead,noappledouble,nolocalcaches jae@devjae:/home/jae/CODE_BASES/DEV/ /Users/jaequery/Sites/devjae/
/usr/local/bin/sshfs -o no_readahead,noappledouble,nolocalcaches jae@stiqr.com:/home/jae/domains/vamokit.com/ /Users/jaequery/Sites/vamokit/
fi
