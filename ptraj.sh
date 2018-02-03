#!/bin/bash

rm ptraj.in
top='../0MIN/alpha.prmtop'

for ((i=0; i<=15; i++)); do
ext=`printf "%03i" $i`

echo "trajin ./neb.r.$ext" >> ptraj.in

done

echo "trajout ./16corecool2bwpmemd.restarts.nc netcdf" >> ptraj.in
echo "go" >> ptraj.in

/projects/sciteam/gk4/amber-cpu/bin/cpptraj $top ptraj.in
