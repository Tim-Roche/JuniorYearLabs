chips = [3.86 3.66 4.00 4.96 3.61 4.94 4.37 5.24 3.45 3.92 ... 
    3.46 4.18 3.54 3.40 3.47 4.71 4.03 4.24 3.88 4.22];
disp("Mean");
mean(chips)

disp("Variance");
var(chips)

figure(1);
boxplot(chips);

figure(2);
histogram(chips, round(sqrt(length(chips))));

offset = 0.1;

newMean = mean(chips) - offset
disp("New Variance");
var(chips)
