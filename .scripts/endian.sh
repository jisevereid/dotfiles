#!/bin/bash

# example usage -> echo 00d66d7e | ./endian.sh

# check stdin
if [ -t 0 ]; then exit; fi

v=`cat /dev/stdin`
i=${#v}

while [ $i -gt 0 ]
do
    i=$[$i-2]
    echo -n ${v:$i:2}
done

echo
