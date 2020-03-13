function res = calc_RD

load RD_vs_om.mat;
% omegas tau_RD itau_RD

[om,fr,texp] = textread('/rota/Analysis/PS/osc2011/RadDamp/raddump-rot',...
                          '%f %f %f','commentstyle','shell');
itexp = 1 ./ texp;
it0 = mean(itexp(om==0));
itau_RD = itau_RD/itau_RD(1) * it0;

find_figure('relax radiation damping'); clf; hold on;
plot(omegas,itau_RD, 'ob-');


fo = fopen('raddamp005.dat', 'w');
fprintf(fo, '%.3f %e %f\n', [omegas; itau_RD; 1./itau_RD]);
fclose(fo);

res = [omegas(:) itau_RD(:)];
