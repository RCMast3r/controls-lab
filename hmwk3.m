hold on
G = zpk([],[0 -1 -15],30)
p = tf(G)
p2 = tf(p.Numerator, p.Denominator, 'InputDelay', 0.2)
bode(p2)
%bode(p2)
%pidTuner(G)
%rlocus(G)
%sgrid(0.707, 0)
