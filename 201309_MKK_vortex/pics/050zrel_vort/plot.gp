#!/usr/bin/gnuplot

set terminal "x11"
set style data points
set nokey

set style fill solid noborder
set pointsize 1

#set terminal fig metric color size 15 10
#set output "out1.fig"

set hidden3d front
set dgrid3d 120,120 splines
set pm3d at s hidden3d 100
set palette negative

#unset hidden3d
#unset surf

splot [] [41:] "bcores.dat" matrix using 2:1:(1-$3) with pm3d

set view 0,0

set terminal fig metric color size 15 10
set output "out2.fig"

splot [] [41:] "bcores.dat" matrix using 2:1:(1-$3) with pm3d

#pause -1
