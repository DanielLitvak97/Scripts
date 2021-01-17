#!/bin/bash
while true; do
 timeSTR=$(ping -c1 8.8.8.8 | grep -o 'time=[0-9]*')
 time="${timeSTR#*=}"
 if [ "$time" -gt 100 ]; then
  echo $time $(date) >> /storage/ping_results.txt
 fi
done

