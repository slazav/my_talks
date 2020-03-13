#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

#set terminal fig metric color size 15 7
#set output "out1.fig"

plot [824000:830000][0.1:0.3]\
 "rel_fre005.dat" using 1:2 with linespoints pt 7 lc 1

set output "out2.fig"
pause -1

plot [824000:830000][0.8:1.0]\
 "rel_fre156.dat" using 1:2 with linespoints pt 7 lc 1

pause -1
