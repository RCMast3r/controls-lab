clear all;close all; clc
s=tf('s');              
sys= 10/(s+5);
pidtool(sys)

D_gain=0;
P_gain=.7;
I_gain=8.0;
PID=(D_gain*s+P_gain+I_gain/s);
T=PID*sys/(1+PID*sys);
% step(T)
t=0:.005:.9;
u=ones(size(t));
y=lsim(T,u,t);
plot(t,y)
