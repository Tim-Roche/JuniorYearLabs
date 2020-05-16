%Part 2
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
buckD = [1 ((1/(RLoad*C))+(RL/L)) ((1/L*C)+(RL/RLoad*L*C))];
G = tf(buckN, buckD);
H = 1;
%%
clc
ps = pole(G);
ps = ps';


%Specs
t_rise = 0.719e-3;
t_sett = 1.32e-3;
t_peak = 1e-3;

zetaOmegaN = 4/t_sett;
omega_d = pi()/t_peak;

theta = atand(omega_d/zetaOmegaN);
zeta = cosd(theta);
PO = exp( (-(zeta*pi()))/(sqrt(1 - zeta^2))) * 100;

disp("t_rise: " + t_rise);
disp("t_sett: " + t_sett);
disp("t_peak: " + t_peak);
disp("zetaOmegaN: " + zetaOmegaN);
disp("omega_d: " + omega_d);
disp("theta: " + theta);
disp("PO: " + PO);
%%
close all
newPole = 1/(s + 8471.4);
another = (s+0.1)/s;
CG = G*newPole*another;
figure(2); 
hold on
rlocus(CG);
plot(-zetaOmegaN, omega_d, "*");
hold off

%%
function aSum = getAngleSum(poles, zeros, pointR, pointI)
    aSum = 0;
    for z=zeros
        disX = abs(z - pointR)
        aSum = aSum + 180 - atand(pointI/disX);
    end
    for p=poles
        disp(p);
        disX = abs(p - pointR);
        newAngle = 180 - atand(pointI/disX);
        aSum = aSum - newAngle;
    end
end

function sigma = getSigmaLocation(angle, pointR, pointI)
    if(angle > 90)
        angle = 180 - angle;
    end
    sigma = ((pointI)/(tand(angle))) + pointR;
end
