probs = 1/5000;
format;
prob1st = geopdf(1, probs);
prob100th = geopdf(100, probs);
disp("Prob on 1st: "+prob1st*100);
disp("Prob on 100th: "+prob100th*100);

%See: https://math.stackexchange.com/questions/428496/probability-of-of-an-event-happening-at-least-once-in-a-sequence-of-independent
n = 5000;
onePlode = geocdf(5000,(1/5000));
disp("Prob of 1 Plode: "+onePlode*100);
