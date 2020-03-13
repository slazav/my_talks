function plot_period()
  addpath ~/he3lib/lib/matlab
  p=0:0.1:20;
  gap=he3_trivgap(0,p);
  ef=he3_tfeff(p);

  [press per] = textread('osc_period.dat',...
    '%f %f', 'commentstyle', 'shell');

  ef_p=he3_tfeff(press);


  figure; clf; hold on;
  plot(press, per, 'r*');

  a = sum(ef_p.*per)/sum(ef_p.^2)

  plot(p, a*ef, 'b-');

end