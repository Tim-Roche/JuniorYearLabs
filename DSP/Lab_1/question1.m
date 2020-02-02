clear all;
clf;
clc;
syms m;

fs = 100;
ts = 1/fs;

freq1 = 20;
freq2 = 80;

maxSamples = 9;
totalsamples = 0:maxSamples;
x = zeros(1,maxSamples);
y = zeros(1,maxSamples);

xwave = cos(2*pi*freq1*m);
ywave = cos(2*pi*freq2*m);

for n = totalsamples
    x(n+1) = subs(xwave, n*ts);
    y(n+1) = subs(ywave, n*ts);
end 

sgtitle("Sampling Frequency of 100Hz");
subplot(2,1,1);
plot(totalsamples, x);
xlabel("Sample Number (n)");
ylabel("Amplitude");
title("Cosine Frequency of 20Hz");
subplot(2,1,2);
plot(totalsamples, y);
xlabel("Sample Number (n)");
ylabel("Amplitude");
title("Cosine Frequency of 80Hz");

