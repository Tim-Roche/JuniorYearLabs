clear all;

Vref = 18;
Vin = 24*1.1;
RLoad = 100;
D = 1;
L = 1.7*10^-3;
C = 0.75*10^-6;
RL = 0.08;
RC = 0.03;
fs = 50*10^3;

%%

RLoad = 100;

buckN = [Vin/(L*C)];
buckD = [1 ((1/(RLoad*C))+(RL/L)) ((1/L*C)+(RL/RLoad*L*C))];
G = tf(buckN, buckD)
pole(G)