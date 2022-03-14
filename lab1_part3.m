clc; clear;
num1 = [3 8];
den1 = [1 6 5];

t=1:0.1:10;

G1 = tf(num1, den1);

[r, t]=gensig('square', 10, 100, 1);
lsim(G1, r, t);
