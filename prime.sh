#!/bin/bash -x

echo Enter a number
read num
isPrime(){
   if [ $1 == 2 ]
   then
      flag=true
      return
   fi
   for((j=2;j<$1;j++))
   do
      if [ $(($1%j)) -eq 0 ]
      then
      flag=false
      break
      fi
   done
}
counter=0
for((i=2;i<=$num;i++))
do
   if [ $(($num%i)) -eq 0 ]
   then
      flag=true
      isPrime $i
      if [ $flag == true ]
      then
         array[$((counter++))]=$i
      fi
      flag=false
   fi
done
echo Prime factors are - ${array[@]}
