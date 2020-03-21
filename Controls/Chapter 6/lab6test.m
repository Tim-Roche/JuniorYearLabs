clear all;
% K = -100:0.1:100;
% G = tf([1],[1, 4, 4, 0]);
% hold on
% rlocus(G);
buffer = -0.08;
fsize = 12;

hold on;
p1 = plot(-1.03, 0, "x", 'Color', 'r', 'DisplayName', "k=1 - Overdamped");
text(-1.03, 0+buffer, "k=1", 'FontSize',fsize);

p2 = plot(-0.396, 0, "x", 'Color', 'r');
text(-0.396, 0+buffer, "k=1", 'FontSize',fsize);

p3 = plot(-1.17, 0, "+", 'Color', 'r', 'DisplayName', "k=0.8 - Overdamped");
text(-1.17, 0+buffer, "k=0.8", 'FontSize',fsize);

p4 = plot(-0.26, 0, "+", 'Color', 'r');
text(-0.26, 0+buffer, "k=0.8", 'FontSize',fsize);


%%%%%%%%%%%%%%%%
p6 = plot(-0.5, +0.866, "x",'Color', 'b', 'DisplayName', "k=3 - Underdamped");
text(-0.5, +0.866+buffer, "k=3", 'FontSize',fsize);

p7 = plot(-0.5, -0.866, "x",'Color', 'b');
text(-0.5, -0.866+buffer, "k=3", 'FontSize',fsize);

p8 = plot(-0.377, 1.19, "+",'Color', 'b', 'DisplayName', "k=5 - Underdamped");
text(-0.377, 1.19+buffer, "k=5", 'FontSize',fsize);

p9 = plot(-0.377, -1.19, "+",'Color', 'b');
text(-0.377, -1.19+buffer, "k=5", 'FontSize',fsize);
%%%%%%%%%%%%%%%%%%

p10 = plot(-0.667, 0, "x",'Color', 'k', 'DisplayName', "k=1.19 - Critical");
text(-0.667, 0+buffer, "k=1.19", 'FontSize',fsize);

%%%%%%%%%%%%%%%%%%
p11 = plot(0, 2, "x",'Color', 'magenta', 'DisplayName', "k=16.1 - Marginal");
text(0+buffer*1.75, 2+buffer, "k=16.1", 'FontSize',fsize);
p12 = plot(0, -2, "x",'Color', 'magenta');
text(0+buffer*1.75, -2+buffer, "k=16.1", 'FontSize',fsize);


%sgrid;
legend([p1,p3,p6,p8, p10, p11], 'Orientation', 'Vertical', 'Location', 'northwest');
xlim([-1.3, 0]);
ylim([-2.5, 2.5]);
xlabel("Real Axis (seconds^{-1})");
ylabel("Imm Axis (seconds^{-1})");
title("Plot of Poles for Selected Gains");
hold off