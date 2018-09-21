#!/bin/bash
if ! [[ $1 =~ ^[0-9]+$ ]];
 then
  echo "Please make sure you passed the integer value "
  exit 1;
fi
if [ $1 -lt 10 ];
then
for i in {1..10}
do
mul=$(echo "$i*$1" | bc )
echo "$1 * $i = $mul"
done
else
for i in {1..5}
do
echo "INDIA"
done
fi
