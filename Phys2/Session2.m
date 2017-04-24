Eps0 = 8.854*10^-12; k = 1/(4*pi*Eps0);
q1 = 1*10^-9; q2 = -1*10^-9; a = 1;
x = [-2.1:0.2:2.1];
E1 = q1*k*(x+a)./abs(x+a).^3;
E2 = q2*k*(x-a)./abs(x-a).^3;
Etotal = E1+E2;
plot(x,Etotal);
xlabel 'x'; ylabel 'Etotal';
grid
title 'Total Electric field vs. x'

