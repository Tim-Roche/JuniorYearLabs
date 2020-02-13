syms s;

a = 3;
b_vect = [3.01, 3.1, 3.3, 3.5, 4.0];
b = b_vect(4);
G = ( (25*b/a)*(s+1) ) / ( (s+b)*(s^2 + 4*s + 25) );

corePole = -2;

g = ilaplace(G)
cs = coeffs(g)

format long
extraPoleC = double(cs(3));
corePoleC = double(sqrt(cs(2)^2 + cs(1)^2))
disp("Extra Pole Coeff: " + extraPoleC);
disp("Core Poles Coeff: " + corePoleC);
disp("Extra/Core Coeff: " + extraPoleC/corePoleC);

disp("Core Pole: " + corePole);
disp("Extra Pole: " + b);
disp("Extra/Core: " + b/corePole);