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
