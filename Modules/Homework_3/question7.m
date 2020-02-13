%Question 1
movieBuckets = 50;
weWant = 37; 

prob37 = poisspdf(weWant, movieBuckets);
disp("Prob37: "+prob37);

%Question 2
over25 = 1 - poisscdf(25,movieBuckets);
disp("Over25: "+over25);

%Question 3
[m,v] = poisstat(movieBuckets);
disp("Mean: "+m);

%Question 4
disp("Var: "+v);