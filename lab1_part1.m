num1 = [3 8];
den1 = [1 6 5];

num2 = [3 8];
den2 = [1 0 9];

num3 = [3 8];
den3 = [1 2 8];

num4 = [3 8];
den4 = [1 -6 8];

G1 = tf(num1, den1);
G2 = tf(num2, den2);
G3 = tf(num3, den3);
G4 = tf(num4, den4);


figure;
disp('poles for G1')
pole(G1)
disp('zeroes for G1')
zero(G1)
title('g1 pole-zero map')
pzmap(G1)

figure;
disp('poles for G2')
pole(G2)
disp('zeroes for G2')
zero(G2)
pzmap(G2)

figure;
disp('poles for G3')
pole(G3)
disp('zeroes for G3')
zero(G3)
pzmap(G3)

figure;
disp('poles for G4')
pole(G4)
disp('zeroes for G4')
zero(G4)
pzmap(G4)

figure;
step(G1)
figure;
step(G2)
figure;
step(G3)
figure;
step(G4)