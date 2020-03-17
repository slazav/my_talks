#!/usr/bin/octave

x=-10:10; y=x;

[xx,yy] = meshgrid(x,y);
rr = hypot(xx,yy);
ff = exp(-(rr/5).^2) + (rr/15).^2;


figure; clf; hold on;
mesh(xx,yy,ff);
view(-8,50);
axis('off')
colormap([0 0 0]);

print  mexhat.gif -dgif '-S1280,1024' -color

