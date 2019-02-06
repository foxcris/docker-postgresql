#!/bin/bash

if [ `ls /etc/ssh/ | wc -l` -eq 0 ]
then
  mkdir /etc/ssh
  cp -ra /etc/ssh_default/* /etc/ssh/
fi

/etc/init.d/ssh start
/docker-entrypoint.sh "$@"
