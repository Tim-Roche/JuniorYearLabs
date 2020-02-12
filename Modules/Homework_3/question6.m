totalCards = 30;
chanceOfCard = 1/30;
r = 3;

%Question 1
[M,V] = nbinstat(r,chanceOfCard);

%Question 2
unwanted = M - 3;

%Question 3
output = binopdf(r, 10, chanceOfCard);
disp(output*100);

%Question 4 
probUnder10 = nbincdf(10, r, chanceOfCard);
disp(probUnder10*100);