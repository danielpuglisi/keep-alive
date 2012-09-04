#!/bin/bash

# Creating directory
mkdir -p /etc/cron.custom
# Downloading keep-alive.sh and save it into /etc/cron.custom directory
curl --silent --output /etc/cron.custom/keep-alive.sh https://raw.github.com/danielpuglisi/keep-alive/master/keep-alive.sh
# Add cronjob to the crontab file
curl https://raw.github.com/danielpuglisi/keep-alive/master/crontab >> /etc/crontab
