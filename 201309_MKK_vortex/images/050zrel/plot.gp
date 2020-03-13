#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

f005(x) = a005*x
f040(x) = a040*x
f082(x) = a082*x
f156(x) = a156*x

#set terminal fig metric color size 15 10
#set output "out1.fig"

fit f005(x) 'zr005.dat' using 1:2 via a005
fit f040(x) 'zr040.dat' using 1:2 via a040
fit f082(x) 'zr082.dat' using 1:2 via a082
fit f156(x) 'zr156.dat' using 1:2 via a156
plot [0:] [0:]\
  'zr005.dat' using 1:2 pt 7 lc 0, f005(x) lc 0,\
  'zr040.dat' using 1:2 pt 7 lc 1, f040(x) lc 1,\
  'zr082.dat' using 1:2 pt 7 lc 2, f082(x) lc 2,\
  'zr156.dat' using 1:2 pt 7 lc 3, f156(x) lc 3

print 0.5, a005
print 4.0, a040
print 8.2, a082
print 15.6, a156

pause -1


