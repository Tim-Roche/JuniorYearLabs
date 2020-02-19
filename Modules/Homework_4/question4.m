syms x;

alpha = 3;
beta = 10; 

funTop = gamma(alpha + beta);
funBot = gamma(alpha)*gamma(beta);

funTot = (funTop/funBot)*x^(alpha-1)*(1-x)^(beta - 1)
expected = int(funTot*x, x, 0, 1);
disp("Expected: "+double(expected));

expectSquare = int(subs(funTot, x^2), 0, 1);

variance = expectSquare - expected^2;
disp("Variance: "+double(variance));
