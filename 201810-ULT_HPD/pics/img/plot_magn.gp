#!/usr/bin/gnuplot

set terminal "x11"
set style data lines


pref="th_osc"
num="0"

plot [:0.06] \
  pref.".dat" using 1:4 with lines lw 2 title "My",\

pause -1

set terminal "fig" metric color
set output "tmp.fig"
replot