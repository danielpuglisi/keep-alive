#!/bin/bash

apps=( heroku-app1 heroku-app2 )

for app in ${apps[@]}; do
  host="http://$app.herokuapp.com"
  curl --silent --output /var/log/keep-alive.txt -L $host
done
