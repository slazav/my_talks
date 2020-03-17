#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

#set terminal fig metric color size 15 10
#set output "outh.fig"

f(x) = a/x**4
fit f(x) 'hdep.dat' using 2:3 via a

plot [17:27] [0:]\
  'hdep.dat' using 2:3 pt 7 lc 1,\
  f(x)

pause -1


