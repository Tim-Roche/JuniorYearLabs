clear all;
clf;
clc;

fs = 100;
ts = 1/fs;

freq1 = 20;
freq2 = 80;

maxSamples = 9;
totalsamples = 0:maxSamples;
x = zeros(1,maxSamples);
y = zeros(1,maxSamples);

for n = totalsamples
    x(n+1) = cos(2*pi*freq1*n*ts);
    y(n+1) = cos(2*pi*freq2*n*ts);
end 

subplot(2,1,1);
plot(totalsamples, x);

subplot(2,1,2);
plot(totalsamples, y);



