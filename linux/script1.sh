#!/bin/bash
if [ $# -eq 5 ];
then
echo -e "First argument is = $1 \nFifth argument is = $5"
if [ $2 -eq 10 ];
then
echo "INDIA"
else
echo "india"
fi
sum=$(echo "$1+$2+$3+$4+$5" | bc)
echo "the sum of 5 argument is $sum"
else
echo "please check if you have entered 5 arguments which should be integers"
fi
