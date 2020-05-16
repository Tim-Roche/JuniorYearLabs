%Part 2
Vref = 18;
Vin = 24*1.1;
RLoad = 100;
D = 1;
L = 1.7*10^-3;
C = 0.75*10^-6;
RL = 0.08;
RC = 0.03;
fs = 50*10^3;

simOut = sim('buckConverter.slx','ReturnWorkspaceOutputs','on');
plot(simOut.question.Time, simOut.question.Data);
%%
buckN = [Vin/(L*C)];
buckD = [1 ((1/(RLoad*C))+(RL/L)) ((1/L*C)+(RL/RLoad*L*C))];
G = tf(buckN, buckD);
H = 1;
%%
ps = pole(G);
ps = ps';
rlocus(G)

%%
ps = pole(G);
ps = ps';

aSum = 0;
for p=ps
    diff_x = abs(abs(point_x) - abs(p));
    aSum = aSum - (180 - atand(point_y/diff_x));
    %aSum = aSum - atand(point_y/point_x - p)
end
syms z

solve(-180 == aSum + z, z)

%% Test
s = tf("s");
C = (s + 1429.58);
G = C*G;
rlocus(G)

%% PID Tuner
close all; 

Kp = 0.00783479924407458;
Ki = 7.56720005725385;
Kd = 6.5162198677668e-07;

C = pid(Kp, Ki, Kd);
T = feedback(C*G, H);
step(T);
stepinfo(T)
rlocus(G)
