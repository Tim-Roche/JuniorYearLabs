D = 1;
L = 1.7*10^-3;
C = 0.75*10^-6;
R_load = 100;
R_L = 0.08;
syms s;
% G = (1/(L*C))/(s^2 + (1/(R_load * C) + R_L/L)*s + (1/(L*C) + R_L/(R_load*L*C)));
G = tf([D/(L*C)], [1 (1/(R_load * C) + R_L/L) (1/(L*C) + R_L/(R_load*L*C))])
%T = feedback(G, 1);
figure(1);
step(G);
figure(2);
impulse(G);