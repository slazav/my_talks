#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 2

#set terminal fig metric color size 15 10
#set output "out2.fig"

f(x)=a*x+b
fit f(x) "g2.dat" via a,b

plot [0:1200] [0:]\
  "g1.dat" pt 7 lc 1,\
  "g2.dat" pt 7 lc 2,\
  "g3.dat" pt 7 lc 3,\
  "g4.dat" pt 7 lc 4,\
  f(x) with lines lc 0

pause -1
