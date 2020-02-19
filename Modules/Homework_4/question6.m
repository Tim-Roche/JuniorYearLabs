mu = 50;
v = 100;
sigma = sqrt(v);

lower = normcdf(40,mu,sigma);
upper = normcdf(60,mu,sigma);
final = upper - lower