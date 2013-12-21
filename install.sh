#!/bin/bash

# Creating directory
echo "Creating directory: /etc/cron.custom"
mkdir -p /etc/cron.custom

# Downloading keep-alive.sh and save it into /etc/cron.custom directory
echo "Downloading file 'keep-alive.sh' into /etc/cron.custom"
curl --silent --output /etc/cron.custom/keep-alive.sh https://raw.github.com/danielpuglisi/keep-alive/master/keep-alive.sh

# Add cronjob to the crontab file
echo "Adding cronjob to /etc/crontab"
curl --silent https://raw.github.com/danielpuglisi/keep-alive/master/crontab >> /etc/crontab

# Set permissions
echo "Setting permissions for /etc/cron.custom/keep-alive.sh"
chmod 755 /etc/cron.custom/keep-alive.sh

echo
echo "Done"
