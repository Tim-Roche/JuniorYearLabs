a = 4;
b = 25;

hold on

simOut = sim('question2.slx','ReturnWorkspaceOutputs','on');
output = stepinfo(simOut.question1.Data);
stepinfo( simOut.question1.Data, simOut.question1.Time)
plot(simOut.question1.Time, simOut.question1.Data)

hold off