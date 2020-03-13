#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

 pi=3.1415926
 f0 = 826390.50
 q0 = 131.9271
 w0 = f0/2/pi
 k = f0/q0/2/pi/2

print 'k=', k

fr(w) = k*w0*(w0**2-w**2) / ((w0**2-w**2)**2+k**2*w**2)
fi(w) = k**2*w*w0 / ((w0**2-w**2)**2+k**2*w**2)
fa(w) = A1 + A2 * sqrt(fr(w)**2 + fi(w)**2)
A1=0.08
A2=0.1

plot [f0-10000:f0+10000] fa(x/2/pi)

pause -1

#set terminal fig metric color size 15 7
#set output "out1.fig"

fit [810000:840000] fa(x/2/pi) "raddamp156.dat" using 1:2 via A1, A2

plot [810000:840000]\
 "raddamp156.dat" using 1:2 with points pt 7 lc 1, fa(x/2/pi)

pause -1
