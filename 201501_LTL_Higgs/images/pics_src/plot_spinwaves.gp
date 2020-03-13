#!/usr/bin/gnuplot

set nokey
#set terminal fig metric color size 10 10
#set output "out.fig"

pi   = 3.1415926
hbar = 1.054572e-27
kb   = 1.380649e-16

gap0 = 1.86522  # Tc, 26.4 bar
Tc   = 2.38518 # mK, 26.4 bar
cpar = 1388 # measured at 26.4bar
cper  = 1179 # measured at 26.4bar

w0 = 2*pi*620000
wB = 2*pi*294016 # 0 bar

E1(k,w0) = (   w0/2 + sqrt((w0/2)**2 + (cper*k)**2)) / (2000*pi)
E2(k,w0) = ( - w0/2 + sqrt((w0/2)**2 + (cper*k)**2)) / (2000*pi)
E3(k) = (sqrt(wB**2 + (cpar*k)**2)) / (2000*pi)

plot [k=-5000:5000] [0:800]\
  E1(k,w0),\
  E2(k,w0),\
  E3(k),\
  E1(k,w0+350000),\
  E2(k,w0+350000),\
  E1(k,w0-350000),\
  E2(k,w0-350000),\
  w0/(2000*pi),\
  w0/2/(2000*pi),\
  (cper*k - w0/2)/(2000*pi),\
  (cper*k + w0/2)/(2000*pi),\
  (cpar*k)/(2000*pi),\
0


pause -1