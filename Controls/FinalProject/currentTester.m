Vref = 18;
Vin = 24;
vinNoise = 0;
L = 1.7*10^-3;
C = 0.75*10^-6;
RL = 0.08;
RC = 0.03;
fs = 50*10^3;

i_designed = 0.180
inc = 0.01; 

maxIRange = i_designed*10
minIRange = 0;


highRange = i_designed:inc:maxIRange;
lowRange = minIRange:inc:i_designed - inc;
iRange = [lowRange highRange];
rRange = Vin./iRange;

len = length(iRange);
SS_vals = zeros(1, len);
final_PWM = zeros(1, len);
delta = zeros(1, len);
for it=1:len
    RLoad = rRange(it);
    disp("Testing: i = "+iRange(it)+" Rl = "+ rRange(it)+ " | "+(it/len)*100+"%");
    simOut = sim('BuckConverter.slx','ReturnWorkspaceOutputs','on');
    SS_vals(it) = simOut.question.Data(length(simOut.question.Data));
    final_PWM(it) = simOut.duty.Data(length(simOut.duty.Data));
    delta(it) = max(abs(diff(simOut.question.Data(end-10:end))));
end
disp("Done!");

output = [iRange', rRange', SS_vals', delta'];

%%
hold on
plot(iRange(9:end), final_PWM(9:end));
xline(0.180, "--")
hold off
xlabel("Current (A)");
ylabel("Duty Cycle");
stepinfo(simOut.question.Data, simOut.question.Time)
