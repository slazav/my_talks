#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

fr005(x)=a/(x+b)
fit fr005(x) 'raddamp005.dat' using 1:2 via a,b

f005(x) = a005*x + b005
f156(x) = a156*x + b156

#set terminal fig metric color size 15 10
#set output "out1.fig"

fit f005(x) 'ztrel005bar.dat' using 1:($2-fr005($1)) via a005,b005
fit f156(x) 'ztrel156bar.dat' using 1:2 via a156,b156
plot [0:] [0:]\
  'ztrel005bar.dat' using 1:($2-fr005($1)) pt 7 lc 0, f005(x) lc 0,\
  'ztrel156bar.dat' using 1:2 pt 7 lc 1, f156(x) lc 1

pause -1
