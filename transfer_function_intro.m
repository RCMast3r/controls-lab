s=tf('s');
G= (s+20)/(s^2 +2*s + 5);
GG=tf(1,[1 2 5]);
figure(1)
step(G)
t=0:0.1:10;
u=ones(size(t))
y=lsim(G,u,t);
figure(2)
plot(t,y)
figure(3)
bode(GG)