totalCards = 30;
p = 1/30;
r = 3;

%Question 1
M = r/p;
disp("Expected: "+M);

%Question 2
unwanted = ((r)*(1-p))/p

%Question 3
output = binopdf(r, 10, p);
disp("Prob in 10: "+output*100+"%");

%Question 4 
probUnder10 = nbincdf(10, r, p);
disp("ProbSub10: "+probUnder10*100+"%");