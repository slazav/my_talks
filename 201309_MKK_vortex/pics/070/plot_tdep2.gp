#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 2

#set terminal fig metric color size 15 10
#set output "out3.fig"

fw2ttc(fw) = 1.8194 / log(11460 * 1.1239/(fw-0.041))

f(x)=a*x
fit f(x) "tdep.dat" using (1000/$1):(fw2ttc(($2+$3)/2)) via a

plot [0:2] [0:0.25]\
  "tdep.dat" using (1000/$1):(fw2ttc(($2+$3)/2)) pt 7 lc 1,\
  f(x) lc 0

pause -1
