#!/usr/bin/gnuplot

set nokey
#set terminal fig metric color size 10 10
#set output "out1.fig"

plot [825:850] [0:]\
 "23.1_20140926_1rad.txt" using ($1/1000):($2+0.0) pt 6 with linespoints

pause -1

