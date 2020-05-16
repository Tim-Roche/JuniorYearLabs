clear all
Vref = 18;
Vin = 24;
RLoad = 100;
%D = 0.6;
L = 1.7e-3;
C = 0.75e-6;
RL = 0.08;
RC = 0.03;
fs = 50*10^3;

%open_system('BuckConverter')

buckN = [Vin/(L*C)];
buckD = [1 ((1/(RLoad*C))+(RL/L)) ((1/(L*C))+(RL/(RLoad*L*C)))];
G = tf(buckN, buckD);

t_rise = 0.719e-3;
t_sett = 1.32e-3;
t_peak = 1e-3;

zetaOmegaN = 4/t_sett;
omega_d = pi()/t_peak;

theta = atand(omega_d/zetaOmegaN);
zeta = cosd(theta);
PO = exp( (-(zeta*pi()))/(sqrt(1 - zeta^2))) * 100;

desired = -omega_d + 1i*zetaOmegaN
ps = pole(G); ps = ps';

angTot = 0;
% (test,reference)
for p=ps
    angle = getAngle(p, desired)
    angTot = angTot - angle;
end

getAngle(0, desired)

%% Tester
close all
s = tf("s");    
% C = (s+2864)/s;
G = ((4.4*10^-9))/((s^2 + 1.338e04*s + 7.849e08));

Kp = -134617494880000000;
Ki = 123923831849664004096; %110;
Kd = 4840000000000;

%  Kp = -0.0236049;
%  Ki = 60.0423; 
%  Kd = 2.32*10^-6;

C = pid(Kp, Ki, Kd, 0);
H = 1;

%figure(1)
%hold on
%rlocus(G*C);
%plot(-zetaOmegaN, omega_d, "*");
%hold off
T = feedback(C*G, H);
step(T)
stepinfo(T)
disp("P = "+Kp+" I = "+Ki + " D = "+Kd);