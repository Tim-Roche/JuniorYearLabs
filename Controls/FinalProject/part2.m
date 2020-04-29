%Part 2
Vref = 18;
Vin = 24;
RLoad = 100;
D = 1;
L = 1.7*10^-3;
C = 0.75*10^-6;
RL = 0.08;
RC = 0.03;
fs = 50*10^3;

%open_system('BuckConverter')


buckN = [Vin/(L*C)];
buckD = [1 ((1/(RLoad*C))+(RL/L)) ((1/L*C)+(RL/RLoad*L*C))];
G = tf(buckN, buckD);
H = 1

%% PID Tuner
close all; 

Kp = 10;
Ki = 1;
Kd = 1;

C = pid(Kp, Ki, Kd);
T = feedback(C*G, H);
step(T);
stepinfo(T)