#!/bin/sh

mkdir -p $HOME/.ssh
echo -e $PRIVATE_SSH_KEY > $HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa

exec /docker-ssh-exec $@
