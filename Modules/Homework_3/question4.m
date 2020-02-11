format long

participants = 8000;
prop_reduce = 0.65;
exactPart = 5250;
Y = binopdf(exactPart ,participants, prop_reduce);
disp("P(5250 success)= "+Y*100);

totalY = 0;
for i=exactPart:participants
    totalY = totalY + binopdf(i ,participants, prop_reduce);
end
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
start = participants-3000;
s = 0.0;
for i=start:participants
    s=s+binopdf(i,participants, prop_reduce);
end
disp("Succeded: "+s);

time = 1:participants;
plot(time, binopdf(time,participants, prop_reduce));