format long g

participants = 8000;
prop_reduce = 0.65;
exactPart = 5250;
Y = binopdf(exactPart ,participants, prop_reduce);
disp("P(5250 success)= "+Y*100);

totalY = 1 - binocdf(5250, participants, prop_reduce);
disp(">=5250 experiencing migrains: " + totalY*100);

%What is the expected number of participants who will experience a
%reduction in migrains
%For binomials Expected is n*p
expected = participants*prop_reduce;
disp("Expected: "+expected);

%For binomials, variance is p(1-p)
biVar = 0;
for i=1:participants
    biVar = biVar + prop_reduce*(1-prop_reduce);
end
disp("Variance: " + biVar);

%What is the probability that no more than 3000 participants will not
%experience a reduction in migraines
%No more than 3000 fail
start = 5001;
pLess3000 =1 - binocdf(start,participants,prop_reduce)
disp("Succeded: "+pLess3000);