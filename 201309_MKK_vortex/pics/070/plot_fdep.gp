#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 2

#set terminal fig metric color size 15 10
#set output "out1.fig"

sh=0.5
plot [] []\
  "f0119e" using 1:($2+sh*0) pt 7 lc 1, "f0119t" using 1:($2+sh*0) with lines lc 1,\
  "f0270e" using 1:($2+sh*1) pt 7 lc 2, "f0270t" using 1:($2+sh*1) with lines lc 2,\
  "f0330e" using 1:($2+sh*2) pt 7 lc 3, "f0330t" using 1:($2+sh*2) with lines lc 3,\
  "f0430e" using 1:($2+sh*3) pt 7 lc 4, "f0430t" using 1:($2+sh*3) with lines lc 4,\
  "f0570e" using 1:($2+sh*4) pt 7 lc 5, "f0570t" using 1:($2+sh*4) with lines lc 5,\
  "f0670e" using 1:($2+sh*5) pt 7 lc 6, "f0670t" using 1:($2+sh*5) with lines lc 6,\
  "f0770e" using 1:($2+sh*6) pt 7 lc 7, "f0770t" using 1:($2+sh*6) with lines lc 7,\
  "f0930e" using 1:($2+sh*7) pt 7 lc 8, "f0930t" using 1:($2+sh*7) with lines lc 8,\
  "f1100e" using 1:($2+sh*8) pt 7 lc 9, "f1100t" using 1:($2+sh*8) with lines lc 9,\
  "f0119t" using 1:($3+sh*0) with lines lc 0,\
  "f0119t" using 1:($4+sh*0) with lines lc 0,\
  "f0119t" using 1:($5+sh*0) with lines lc 0


pause -1
