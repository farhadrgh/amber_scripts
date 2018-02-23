#!/bin/bash

rm -rf dihedral
mkdir dihedral

for((i=0; i<=19; i++)); do
ext=`printf "%03i" $i`
cp $ext/5COOL2/dihedral.out dihedral/dihedral-$ext.dat
done
