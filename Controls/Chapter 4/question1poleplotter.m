sym a;

figure(1);
for n=1:4
    sys = tf([1],[1 n]);
    subplot(2,2,n);
    
    pzplot(sys);
    title("Poles when a = "+n);
end