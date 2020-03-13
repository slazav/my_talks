#!/usr/bin/gnuplot

set nokey
#set terminal fig metric color size 10 10
#set output "out.fig"


gap0 = 1.771207 # Tc
Tc   = 0.9293837 # mK
nu0  = 833000
pi   = 3.1415926
hbar = 1.054572e-27
kb   = 1.380649e-16

Hz2Tc = 2*pi*hbar/kb * 1000 / Tc / gap0

print nu0 * Hz2Tc,  1.253019e+05 * Hz2Tc

c=1
hh=0.05

plot [0:2] [0:3]\
 sqrt(4 + (c*x)**2),\
 sqrt(12/5 + (c*x)**2),\
 sqrt(8/5 + (c*x)**2),\
 + hh + sqrt(hh**2 + (c*x)**2),\
 - hh + sqrt(hh**2 + (c*x)**2),\
 c*x

pause -1