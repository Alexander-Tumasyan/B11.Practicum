#!/bin/bash

container_index_md5=$(curl -sl localhost:9889 | md5sum | cut -d ' ' -f 1)
repository_index_md5=$(md5sum ./index.html | cut -d ' ' -f 1)

if [ "$container_index_md5" = "$repository_index_md5" ]; then echo "Checksum matches"
  else
    echo 'Check md5sum failed' | mail -s 'Checksum different' yourmail@example.com
  fi