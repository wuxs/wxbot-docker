#!/usr/bin/env bash

exec sudo -E bash -c 'supervisord -c /etc/supervisord.conf -l /var/log/supervisord.log' &
sleep 10

wine 'C:\wxbot-sidecar.exe' -a 0.0.0.0:80 -b