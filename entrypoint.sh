#!/usr/bin/env bash

if [ "$#" == 0 ]
then
  echo "Running redis stress..."
  ruby ./main.rb
fi

exec $@
