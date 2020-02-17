processsors = 100;
totalDefect = 4;

format long
pdf = hygepdf(0:5, 100, 4, 5)

cdf = 0;
eachCDF = []
for i=1:length(pdf)
    cdf = cdf + pdf(i);
    eachCDF = [eachCDF, cdf];
end
eachCDF
disp("cdf: "+cdf);