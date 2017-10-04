#!/bin/bash

rm dist.in
top='../../0MIN/alpha.prmtop'

echo "trajin iresp10.restarts.nc" >> dist.in
echo "distance :1 :12 out dist.dat" >> dist.in
echo "run" >> dist.in
echo "quit" >> dist.in

$AMBERHOME/bin/cpptraj $top dist.in
