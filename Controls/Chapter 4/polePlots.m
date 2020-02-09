clear all;
close all;

% Insert your code here
a_vect = [4 8 2 4 4 8 32];
b_vect = [25 37 22 88 340 100 1600];

s = tf("s");

figCount = 1;
stepFig = figCount;
figCount = figCount + 1;

figure(stepFig);
hold on
for n=1:length(a_vect)   
    %Plotting Step Response
    a = a_vect(n);
    b = b_vect(n);
    simOut = sim('question2.slx','ReturnWorkspaceOutputs','on');
    output = stepinfo(simOut.question1.Data);
    stepinfo( simOut.question1.Data, simOut.question1.Time)
    plot(simOut.question1.Time, simOut.question1.Data)
end
hold off

for n=1:length(a_vect)
    %Setting a and b
    a = a_vect(n);
    b = b_vect(n);
    disp("a = "+a+" b = "+b);
    
    %Plotting Pole
    figure(figCount);
    G= tf([b], [1 a b]);
    pzplot(G);
    title("Poles of: a = " + a + ", b = "+b); 
    figCount = figCount + 1;
end 