zeros = [];
poles = [-2 -4 -6];
findSigma(zeros, poles)
findThetas(zeros,poles)
findBreaks(zeros,poles)
[ang rcord] = returnAngleFromR(3.431, 53.772, zeros, poles)

function sigma = findSigma(zeros, poles)
    sigma = (sum(poles) - sum(zeros))/(length(zeros) + length(poles));
end

function angles = findThetas(zeros, poles)
    difference = length(poles) - length(zeros);
    k = 0:difference - 1;
    angles = ((2*k + 1)*pi())/(difference);
    angles = rad2deg(angles);
end

function points = findBreaks(zeros, poles)
    syms sig 
    allp = 0;
    allz = 0;
    for p=poles
        allp = allp + 1/(sig - p);
    end
    for z=zeros
        allz = allz + 1/(sig - z);
    end
    points = solve(allp==allz, sig);
end

function [ang rect] = returnAngleFromR(r, theta, zeros, poles)
    theta = 180 - theta;
    theta = deg2rad(theta);
    rect = r*cos(theta) + 1i*r*sin(theta);
    ang = 0;
    for z=zeros
        ang = ang + angle(rect - z);
    end
    for p=poles
        ang = ang - angle(rect - p);
    end
    ang = rad2deg(ang);
end

