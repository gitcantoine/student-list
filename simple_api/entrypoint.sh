#!/bin/bash

if [[ ! -f /data/student_age.json ]]
then
  mkdir -p /data/
  cp /simple_api/student_age.json /data/
fi

python /simple_api/student_age.py

