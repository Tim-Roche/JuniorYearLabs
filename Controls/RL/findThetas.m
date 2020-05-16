function angles = findThetas(zeros, poles)
    difference = length(poles) - length(zeros);
    k = 0:difference - 1;
    angles = ((2*k + 1)*pi())/(difference);
    angles = rad2deg(angles);
end