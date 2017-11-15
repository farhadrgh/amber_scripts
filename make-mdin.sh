#!/bin/bash

rm mdin.*

for ((i=1; i<=32; i++)); do
#ext=`printf "%03i" $i`
ext=`printf $i`

rand=$(awk -v i=$i '{if(NR==i) {print $1}}' get-seed.in)

cat >> mdin.$ext <<EOF
hOGG 8OG_HIP NEB ini-heating test 1 (10ps)
&cntrl
  imin = 0,  ntx = 5, irest = 1,
  ntc=2, ntf=2,
  ntpr=1000, ntwx=5000, ntwr=1000,
EOF

echo "  ig=$rand," >> mdin.$ext

cat >> mdin.$ext <<EOF
  ntb = 1, cut = 8.0,
  nstlim = 500000, nscm= 0,
  dt = 0.001,
  ntt = 3, gamma_ln=75,
  taup = 0.1, tautp = 0.1,
  tempi=310.0, temp0=310.0,
  ineb = 1, skmin = 20, skmax = 20,
  tgtfitmask=":31-98,103-339@CA,C,N",
  tgtrmsmask=":8-12,19-23,31-98,103-339 & !@H=",
&end
EOF

done
