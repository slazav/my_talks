#!/usr/bin/gnuplot

file='relax00.dat'

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1


fr(x)=a/(x+b)
fit fr(x) 'raddamp005.dat' using 1:2 via a,b
plot 'raddamp005.dat' using 1:2 pt 7 lc 1, fr(x) lc 0

pause -1

#set terminal fig metric color size 20 15
#set output "out1.fig"

f00(x) = a00*x+b00
f02(x) = a02*x+b02
f04(x) = a04*x+b04
f06(x) = a06*x+b06
f08(x) = a08*x+b08
f10(x) = a10*x+b10
f12(x) = a12*x+b12
f16(x) = a16*x+b16
f18(x) = a18*x+b18

fit f00(x) 'relax00.dat' using 1:($2-fr(0))    via a00,b00
fit f02(x) 'relax02.dat' using 1:($2-fr(0.2))  via a02,b02
fit f04(x) 'relax04.dat' using 1:($2-fr(0.4))  via a04,b04
fit f06(x) 'relax06.dat' using 1:($2-fr(0.6))  via a06,b06
fit f08(x) 'relax08.dat' using 1:($2-fr(0.8))  via a08,b08
fit f10(x) 'relax10.dat' using 1:($2-fr(1.0))  via a10,b10
fit f12(x) 'relax12.dat' using 1:($2-fr(1.24)) via a12,b12
fit f16(x) 'relax16.dat' using 1:($2-fr(1.6))  via a16,b16
fit f18(x) 'relax18.dat' using 1:($2-fr(1.8))  via a18,b18

plot [0:0.52][0:0.8]\
 'relax00.dat' using 1:($2-fr(0))    with points pt 7 lc 1, f00(x) lc 1,\
 'relax02.dat' using 1:($2-fr(0.2))  with points pt 7 lc 2, f02(x) lc 2,\
 'relax06.dat' using 1:($2-fr(0.6))  with points pt 7 lc 4, f06(x) lc 4,\
 'relax12.dat' using 1:($2-fr(1.24)) with points pt 7 lc 7, f12(x) lc 7,\
 'relax16.dat' using 1:($2-fr(1.6))  with points pt 7 lc 8, f16(x) lc 8
pause -1
