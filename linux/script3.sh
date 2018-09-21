#!/bin/bash

print_name()
{
for i in {1..10}
do
echo "my name is $1"
done
}
read -p "Please enter your name = " name

print_name $name

