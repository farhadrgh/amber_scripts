#!/bin/bash

rm -rf distance
mkdir distance

for((i=0; i<=19; i++)); do
ext=`printf "%02i" $i`
cp $ext/5COOL2/dist.dat distance/distance-$ext.dat
done
