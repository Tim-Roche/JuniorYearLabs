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