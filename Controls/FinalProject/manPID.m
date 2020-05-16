%% Test
close all;
clear all
Vref = 18;
Vin = 24;
RLoad = 100;%[180000 180];

D = 1;
L = 1.7*10^-3;
C = 0.75*10^-6;
RL = 0.08;
RC = 0.03;
fs = 50*10^3;

RLoad = 100,000;

H = 1;
figNum = 1;

buckN = [Vin/(L*C)];
buckD = [1 ((1/(RLoad*C))+(RL/L)) ((1/(L*C))+(RL/(RLoad*L*C)))];
G = tf(buckN, buckD);
%% PID Tuner

Kp = 11148;
Ki = 3.10696e7;
Kd = 1;

%pidtune(G, 'PID')   
C = pid(Kp, Ki, Kd);
T = feedback(C*G, H);
figure(1);
step(T)
stepinfo(T)
figure(2);

rlocus(C*G)
%plot(-zetaOmegaN, omega_d, "*");
