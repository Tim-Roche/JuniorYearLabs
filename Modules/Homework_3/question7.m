%Question 1
movieBuckets = 50;
weWant = 37; 

poisspdf(weWant, movieBuckets)

%Question 2
over25 = 1 - poisscdf(25,movieBuckets);
disp(over25);
[m,v] = poisstat(movieBuckets);

%Question 3
disp("Mean: "+m);

%Question 4
disp("Var: "+v);