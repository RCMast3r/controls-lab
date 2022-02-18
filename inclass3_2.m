clear all; close all; clc
Ts=1:2:10;
for i=1:length(Ts)
OS=10:10:50;
for j=1:length(OS)
z=-log(OS(j)/100)/(pi^2+(log(OS(j)/100))^2)^0.5;
w=4/(z*Ts(i));
T=tf(w^2,[1,2*z*w,w^2]);
t=0:.005:15;
u=ones(size(t));
y=lsim(T,u,t);
hold on
plot(t,y)
end
end
