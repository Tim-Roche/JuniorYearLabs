%Question 1
movieBuckets = 50;
weWant = 37; 

prob37 = poisspdf(weWant, movieBuckets);
disp("Prob37: "+prob37);

%Question 2
overOrEqual25 = 1 - poisscdf(24,movieBuckets);
disp("OverOrEqual25: "+overOrEqual25);

%Question 3
[m,v] = poisstat(movieBuckets);
disp("Mean: "+m);

%Question 4
disp("Var: "+v);