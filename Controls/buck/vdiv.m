R_1 = 50*10^3;
R_2 = 18.9*10^3;
ratio = 0.378;
V_in = 12;

disp("V_div");
V_cor = V_in*(R_2)/(R_1 + R_2)

delta_R1 = R_1*(0.95);
delta_R2 = R_2*(1.05);
V_max = V_in*(delta_R2)/(delta_R2 + delta_R1);
disp("V_max R1*0.95 R2*1.05: "+V_max);

delta_R1 = R_1*(1.05);
delta_R2 = R_2*(0.95);
V_min = V_in*(delta_R2)/(delta_R1 + delta_R2);
disp("V_min R1*1.05 R2*1.05: "+V_min);

errorMax = abs(V_max - V_cor)/V_cor*100
errorMin = abs(V_min - V_cor)/V_cor*100

avg = (errorMax + errorMin)/2;

% _________________
percent = -0.05:0.0001:0.05;
deltaR2 = percent*R_2;
V_mod_R2 = zeros(1, length(deltaR2));
for i=1:length(deltaR2)    
    V_mod_R2(i) = (V_in*R_2+deltaR2(i))/(R_1 + (R_2+deltaR2(i)));
end
V_out = V_in*R_2/(R_1 + R_2);

figure(1);
change = V_mod_R2-V_out;
rate = change(4) - change(3)
disp("Sensitivity of R2: "+rate);
plot(percent,change);
title("Sensistivity of R2");
xlabel("Percent from R_2");
ylabel("\DeltaV_{out}");


%___________________
percent = -0.05:0.0001:0.05;
deltaR1 = percent*R_1;
V_mod_Vin = zeros(1, length(deltaR1));
for i=1:length(deltaR1)    
    V_mod_Vin(i) = (V_in*R_2)/((R_1+deltaR1(i)) + (R_2));
end
V_out = V_in*R_2/(R_1 + R_2);

figure(2);
change = V_mod_Vin-V_out;
plot(percent,change);
title("Sensistivity of R1");
xlabel("Percent from R_1");
ylabel("\DeltaV_{out}");


% _________________
percent = -0.05:0.0001:0.05;
deltaR2 = percent*R_2;
V_mod_R2 = zeros(1, length(deltaR2));
for i=1:length(deltaR2)    
    V_mod_R2(i) = (V_in*R_2+deltaR2(i))/(R_1 + (R_2+deltaR2(i)));
end
V_out = V_in*R_2/(R_1 + R_2);

figure(1);
change = V_mod_R2-V_out;
plot(percent,change);
title("Sensistivity of R2");
xlabel("Percent from R_2");
ylabel("\DeltaV_{out}");


%___________________
percent = -0.05:0.0001:0.05;
deltaVIN = percent*V_in;
V_mod_Vin = zeros(1, length(deltaR1));
for i=1:length(deltaR1)    
    V_mod_Vin(i) = (V_in + deltaVIN(i)) * R_2/(R_1 + R_2);
end
V_out = V_in*R_2/(R_1 + R_2);

figure(3);
change = V_mod_Vin-V_out;

plot(percent,change);
title("Sensistivity of V_{in}");
xlabel("Percent from V_{in}");
ylabel("\DeltaV_{out}");
