function sigma = findSigma(zeros, poles)
    sigma = (sum(poles) - sum(zeros))/(length(poles) - length(zeros));
end