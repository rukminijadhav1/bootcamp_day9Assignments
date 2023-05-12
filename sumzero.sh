#!/bin/bash -x

a=3
b=-1
c=-2
array=($a $b $c)
declare -i sum
sum=${array[@]}
echo $sum
