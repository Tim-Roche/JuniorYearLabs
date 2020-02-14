syms s 
b = 3.01;
G = (((25*b)/3)*(s+1))/((s+b)*(s^2 + 4*s + 25));

g = ilaplace(G);
vpa(g)