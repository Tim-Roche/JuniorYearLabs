totalCards = 30;
p = 1/30;
r = 3;

%Question 1
[M,V] = nbinstat(r,p);
disp("Expected: "+M);
%Question 2
unwanted = M - 3;

%Question 3
%output = binopdf(r, 10, p);
%disp("Prob in 10: "+output*100);

%Number of trials X, until observing r successes
after10=0;
it = 10;%3:10;
for x=it
    after10 = after10 + nchoosek(x-1,r-1)*(p^r)*(1-p)^(x-r); 
end
disp("after10: "+ after10*100+"%");

%Question 4 
%probUnder10 = nbincdf(10, r, p);
%disp("ProbSub10: "+probUnder10*100);
%Number of failures, x, until observing r successes
it = 0:10;
y = 0;
for x=it
    y = y + nchoosek(x+r-1,x)*(p^r)*(1-p)^x;
end
disp("ProbSub10: "+y*100+"%");