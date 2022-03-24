syms d t2 
l = 0.5;
L = 3;
S = solve( l * sin(t2) + L*cos(asin((l*sin(t2)*tan(t2))/L)) - L - d == 0 , t2)

