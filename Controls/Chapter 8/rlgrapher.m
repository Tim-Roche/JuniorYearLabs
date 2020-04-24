syms sig
allk = [20 50 85 200 700];
for k=allk
    eqn = k == -((sig)*(sig+0.5)*(sig+10))/((sig+1.5));
    a = solve(eqn, sig);
    disp("k = "+k);
    disp(a);
    theta = -1*atand(abs(imag(a(2)))/real(a(2)));
    disp("theta = "+double(theta));
    zeta = cosd(theta);
    disp("zeta = "+double(zeta));
    POS = exp(-(zeta*pi())/(sqrt(1-zeta^2))) * 100;
    disp("Percent Overshoot: " + double(POS) + "%");
    ts = 4/(-1*real(a(2)));
    disp("T_s: "+double(ts));
end                     