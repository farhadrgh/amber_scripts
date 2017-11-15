#!/bin/bash

rm get-seed.in

for ((i=1; i<=32; i++)); do
#ext=`printf "%03i" $i`
ext=`printf $i`

#awk 'NR==18 {print $3};NR==50 {print $9}' ./3eq.$ext.out >> get-seed.in
echo $(grep "Setting random seed to" ./3eq.$ext.out | awk '{print $9}')         $(grep "MDOUT" ./3eq.$ext.out | awk '{print substr($0,13,10)}') >> get-seed.in
#grep "MDOUT" ./3eq.$ext.out | awk '{print substr($0,13,10)}' >> get-seed.in

done
