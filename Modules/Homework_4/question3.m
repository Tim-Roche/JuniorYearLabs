syms t;
v = 1;
format 
num = gamma((v + 1)/2);
den = sqrt(v*pi())*gamma(v/2);
fun = (num/den)*(1 + (t^2/v))^(-(v+1)/2);

double(int(fun, t, -inf, 2))