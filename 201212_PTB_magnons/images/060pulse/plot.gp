#!/usr/bin/gnuplot

set terminal x11
set style data points
set nokey

file="fid_fa_ex.dat"

set style fill solid noborder
set pointsize 0.3

f(x) = a*exp(-x/b)

#set terminal fig metric color size 9 7
#set output "out1.fig"

fit f(x) file using 1:3 via a,b

plot\
 file using 1:3 with points pt 7 lc 1,\
 f(x) lc 3

print a, b

pause -1
