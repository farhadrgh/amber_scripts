#!/bin/bash                                                                     

rm -rf ene
mkdir ene
cd ene

for ((i=0; i <= 19; i++)) ; do
ext=`printf "%02i" $i`
awk 'NR>=52221&&NR<=52236 {print $4, $6}' ../$ext/5COOL2/neb.out.005 > $ext-ene.dat
done
