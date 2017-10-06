#!/bin/bash

for ((i=0; i<=19; i++)); do
ext=`printf "%02i" $i`
cd $ext/5COOL2
../../ptraj.sh
../../dist.sh
cd ../..
done
