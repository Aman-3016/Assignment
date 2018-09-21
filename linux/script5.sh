#!/bin/bash

get_data()
{
git_link=$1
repo_path=$(basename $1 .git)
git clone $git_link
echo "$repo_path"
pushd $repo_path
git log --since=5.days --pretty=format:"%H,%s,%an,%cd" >> /tmp/input.csv
popd
}

#where is the main part
read -p "please enter the git_link =" num
get_data $num
if [ `echo $? ` == 0 ];
then
echo "create_html"
else
echo "Html report cant be generated as we are unable to fetch the data"
fi
