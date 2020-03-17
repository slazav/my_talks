#!/usr/bin/gnuplot

set terminal "x11"
#set terminal "fig" metric color size 25 17
#set output "out1.fig"
set style data points
set nokey
set samples 500

set style fill solid noborder
set pointsize 1

file="20120705+0.0.txt"
file1="specturm_slava.txt"

set style data points
set style fill solid noborder
set pointsize 1

h0 = 90.7976

fz(h) = 2.7513 * sqrt(h)
fr(h) = 198.5647 - 0.0099744 * (h)
gz(h) = 0.0072099 * sqrt(h)
gr(h) = -0.24726

f(h, nr, nz) =\
  (2*nz + 1/2.0)    * fz(h) - \
  (2*nz + 1/2.0)**2 * gz(h) + \
  (2*nr + 1)    * fr(h) - \
  (2*nr + 1)**2 * gr(h)

plot [0:3500][0:]\
  file using ($1-h0):($2-$2 + f($1-h0,0,0)) with points pt 7 lc 1,\
  file using ($1-h0):($3-$2 + f($1-h0,0,0)) with points pt 7 lc 1,\
  file using ($1-h0):($4-$2 + f($1-h0,0,0)) with points pt 7 lc 1,\
  file using ($1-h0):($5-$2 + f($1-h0,0,0)) with points pt 7 lc 1,\
    f(x,0,0) with lines lc 1,\
    f(x,0,1) with lines lc 1,\
    f(x,0,2) with lines lc 1,\
    f(x,0,3) with lines lc 1,\
  file using ($1-h0):($8-$2  + f($1-h0,0,0)) with points pt 7 lc 3,\
  file using ($1-h0):($9-$2  + f($1-h0,0,0)) with points pt 7 lc 3,\
  file using ($1-h0):($10-$2  + f($1-h0,0,0)) with points pt 7 lc 3,\
  file using ($1-h0):($11-$2 + f($1-h0,0,0)) with points pt 7 lc 3,\
    f(x,1,0) with lines lc 3,\
    f(x,1,1) with lines lc 3,\
    f(x,1,2) with lines lc 3,\
    f(x,1,3) with lines lc 3,\
  file using ($1-h0):($13-$2 + f($1-h0,0,0)) with points pt 7 lc 2,\
  file using ($1-h0):($14-$2 + f($1-h0,0,0)) with points pt 7 lc 2,\
  file using ($1-h0):($15-$2 + f($1-h0,0,0)) with points pt 7 lc 2,\
  file using ($1-h0):($16-$2 + f($1-h0,0,0)) with points pt 7 lc 2,\
    f(x,2,0) with lines lc 2,\
    f(x,2,1) with lines lc 2,\
    f(x,2,2) with lines lc 2,\
    f(x,2,3) with lines lc 2,\
  file using ($1-h0):($17-$2 + f($1-h0,0,0)) with points pt 7 lc 4,\
  file using ($1-h0):($18-$2 + f($1-h0,0,0)) with points pt 7 lc 4,\
  file using ($1-h0):($19-$2 + f($1-h0,0,0)) with points pt 7 lc 4,\
    f(x,3,0) with lines lc 4,\
    f(x,3,1) with lines lc 4,\
    f(x,3,2) with lines lc 4,\
  file1 using 1:2 with points pt 6 lc 1,\
  file1 using 1:3 with points pt 6 lc 1,\
  file1 using 1:4 with points pt 6 lc 1,\
  file1 using 1:5 with points pt 6 lc 1,\
  file1 using 1:6 with points pt 6 lc 3,\
  file1 using 1:7 with points pt 6 lc 3,\
  file1 using 1:8 with points pt 6 lc 3,\
  file1 using 1:9 with points pt 6 lc 3,\
  file1 using 1:10 with points pt 6 lc 2,\
  file1 using 1:11 with points pt 6 lc 2,\
  file1 using 1:12 with points pt 6 lc 2,\
  file1 using 1:13 with points pt 6 lc 2,\
  file1 using 1:14 with points pt 6 lc 4,\
  file1 using 1:15 with points pt 6 lc 4,\
  file1 using 1:16 with points pt 6 lc 4,\
0

pause -1
