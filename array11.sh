#!/bin/bash

counter=0
for((i=0;i<=100;i++))
do
if [ $((i%11)) -eq 0 ]
then
   array[$((counter++))]=$i
fi
done
echo Digits repeated twice are - ${array[@]}
