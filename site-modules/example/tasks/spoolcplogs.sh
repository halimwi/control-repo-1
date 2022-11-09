#!/bin/bash
day=5
#if [[ "$PT_daysold"=="one" ]]
#then
#  day=1 
#elif [[ "$PT_daysold"=="two" ]]
#then
#  day=2
#elif [[ "$PT_daysold"=="three" ]]
#then
#  day=3
#else
#  day=1000
#fi

case $PT_daysold in
  one)
  day=1
  ;;
  two)
  day=2
  ;;
  three)
  day=3
  ;;
  *)
  day=1000
  ;;
esac

echo "the value is " $day
find /var/log/httpd/ -maxdepth 1 -type f -mtime -$day -exec sh -c '
    for pathname do
        /usr/local/bin/aws s3 cp "$pathname" s3://demohw
        printf "%s\n" "$pathname"
    done' sh {} +
