sym a;

figure(1);
for n=1:4
    sys = tf([1],[1 n]);
    subplot(2,2,n);
    pzplot(sys);
    title("Poles when a = "+n);
end

figure (2);
syms s;
hold on
for n=1:10
    sys = n/(s + n);
    steped = sys*(1/s);
    new = ilaplace(steped);
    disp(n);
    disp(new);
    time = 0:0.01:10;
    plot(time,subs(new,time));
    title("Poles when a = "+n);
end