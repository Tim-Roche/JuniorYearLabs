%On what day can you expect your manager to visit?
format
index = 1:5;
probs = [.15, .20, .45, .15, .05];

expected = 0;
for i=1:length(probs)
    expected = expected + index(i) * probs(i);
end
disp("Expected: " + expected);

%What is the variance of this expectation 
variance = 0;
for i=1:length(probs)
     variance = variance + probs(i)*(index(i) - expected)^2;
end
disp("Variance: "+variance);

%You have planned a fishing trip for the weekend. What is the probability 
%that you can be gone on both Thursday and Friday without missing your 
%manager?
leavingDay = 4;
chance = 0;
for i=1:leavingDay-1
    chance = chance + probs(i);
end
disp("P(X < "+leavingDay+") = "+chance);

%You come back from your fishing trip and learn that your manager didn’t 
%actually visit last week, and that they would be visiting this week 
%instead. However, you need some time to recover after your trip. 
%What is the probability that your boss will visit no earlier than 
%Wednesday?
returnDay = 3;
chance = 0;
for i=returnDay:length(probs)
    chance = chance + probs(i);
end
disp("P(X >= "+returnDay+") = "+chance);
