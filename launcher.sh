#!/bin/bash

echo "Setting myhostname variable for postfix"
postconf -e myhostname=$HOSTNAME

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf