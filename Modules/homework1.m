close;
clc;
clear;

%% Question 1
data= [86 94 75 84 56 97 94 68 49 79 78 68 93 37 86 88 91 90 85 84 ...
       76 94 82 92 91 57 81 60 72 94 83 90 86 72 42 97];

%Question 1
disp("Mean");
avg = mean(data)
disp("Median");
med = median(data)
disp("Mode");
mde = mode(data)
disp("Variance");
variance =var(data,1)
disp("standard_dev");
standard_dev = std(data,1)

histogram(data, sqrt(length(data)));
%% Question 2

%Negatively Skewed
%Used typical bin number sqrt(N) where N is population size
%Upper Fourth: 91
%Lower Fourth: 72
%Fourth Spread = 91 - 72 = 19
%Outliers: 37 and 42
% %Question 3
% boxplot(data);
% %What are the upper and lower fourths
% 
% 
% %Problem 2
funda = [6.8;6.6;8.3;7.2;5.8;6.7;8.8;4.5;7.8;11.4];
fundb = [5.7;5.9;7.4;8.5;6.2;6.8;12.4;5.1;4.2;10.3];
disp("Average Annual Return");
mean(funda)
mean(fundb)

disp("Variance of each funds returns");
var(funda, 1)
var(fundb, 1)

figure(1);
boxplot([funda, fundb], 'Labels',{'Fund A', 'Fund B'});

% %There is a signifigant range between the quartiles on fund A. There is
% %also an outlier on fund B.
% 
% %I would invest in fund A since the variance is smaller at 3.14 instead of
% %5.68 despite the two funds having approxametly the same mean. This will make it easier to plan into the future because the
% %predictable returns. 


%% Problem Three
chips = [3.86 3.66 4.00 4.96 3.61 4.94 4.37 5.24 3.45 3.92 ... 
    3.46 4.18 3.54 3.40 3.47 4.71 4.03 4.24 3.88 4.22];
disp("Mean");
mean(chips)

disp("Variance");
var(chips)

figure(1);
boxplot(chips);
%There are no outliers according to the boxplot

figure(2);
histogram(chips, round(sqrt(length(chips))));
%Posively Skewed

offset = 0.1;

newMean = mean(chips) - offset
disp("New Variance");
var(chips)

%I think that it is not reasonable to market the chips as 
%operating at a 4.1Ghz clock speed. The average clock speed is 3.95 with a
%variance of 0.305. The advertised speed would be about 0.2 GHz above the
%mean when the variance of manufacturing is only 0.305. Advertising this
%speed would be desceptive to costumers who may recieve a chip performing
%considerably worse than the advertised clock speed