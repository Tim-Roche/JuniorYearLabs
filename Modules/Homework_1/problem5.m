syms s
g_1 = (20*(s+2)*(s+3)*(s+6)*(s+8))/ (s*(s+7)*(s+9)*(s+10)*(s+15));
g_2 = (s^4 + 17*s^3 + 99*s^2 + 223*s + 140)/(s^5 + 32*s^4 + 363*s^3 + 2092*s^2 + 5052*s + 4320);

g_1_poly = expand(g_1 + g_2);
g_2_poly = expand(g_1 - g_2);

g_1_fact = feval(symengine, 'factor', g_1, 'R_') %Factorize
g_2_fact = feval(symengine, 'factor', g_2, 'R_') %Factorize

disp("Poly and Poly")
g_3pp = simplify(g_1_poly + g_2_poly)
g_4pp = simplify(g_1_poly - g_2_poly)
g_5pp = simplify(g_1_poly * g_2_poly)

disp("Poly and Fact");
g_3pf = simplify(g_1_poly + g_2_fact)
g_4pf = simplify(g_1_poly - g_2_fact)
g_5pf = simplify(g_1_poly * g_2_fact)

disp("Fact and Poly");
g_3ff = g_1_fact + g_2_poly
g_4ff = g_1_fact - g_2_poly
g_5ff = g_1_fact * g_2_poly