clear all;close all;clc
syms s t
G = 1/(s^2 + 2*s + 5)
Y=G*(1/s);
y=ilaplace(Y);
tt=0:0.1:6;
for i=1:length(tt)
yy(i)=subs(y, t, tt(i));
end
plot(tt, yy)