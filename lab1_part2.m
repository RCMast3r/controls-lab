num3 = [3 8];
den3 = [1 2 8];

t=1:0.1:10;
r = sin(2*t + 0.8)
G3 = tf(num3, den3);
c = lsim(G3, r, t);

plot(t, r,t,c);
legend({'y = sin(2t + 0.8)','y = G3 response'},'Location','southwest')

