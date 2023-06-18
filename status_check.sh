#!/bin/bash

status="curl -s --head localhost:9889 | grep 200 | cut -d ' ' -f 2"

if [ "$status" != "" ]; then echo "Ok. Status 200."
  else
    echo 'Check status failed' | mail -s 'Server down' yourmail@example.com
  fi