#!/bin/sh

a=0

while [ "$a" -lt 10 ]    #loop1
do
   b="$a"
   while [ "$b" -ge 0 ]  #loop2
   do
      echo -n "$b "
      b=`expr $b - 1`
   done
   echo
   a=`expr $a + 1`
done