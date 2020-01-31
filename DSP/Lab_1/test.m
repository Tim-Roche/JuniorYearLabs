syms w;
test1 =  2*pi*(heaviside(-w+0.5) - heaviside(-w-0.5));
test2 =  2*pi*(heaviside(w+0.5) - heaviside(w-0.5));
plot(-2:0.01:2, subs(test2, -2:0.01:2));
