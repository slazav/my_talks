#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

#set terminal fig metric color size 15 10
#set output "outp.fig"

f(x) = k*(a*x**2 + b*x**2 + c*x + d)
k=1
fit f(x) 'silaev_est3.dat' using 1:($2*1e24) via a,b,c,d
fit f(x) 'pdep.dat' via k

plot [0:20] [0:]\
  'pdep.dat' using 1:2 pt 7 lc 1,\
  f(x)

pause -1


