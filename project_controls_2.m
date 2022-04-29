kg = 0.015942
kb = 0.4
syms s kb_ kg_ ke_ tm_ te_ a



ke = 0.00105754
tm = 0.0174495
te = 0.00011156

% s^3 s^2 s +s^0
T=tf([0 ((kb*kg)/ke)],[(tm*te) (tm) 1 (2*pi/ke)]); % this 
g = 1/(t-a)^2
F = (s*(kb_*kg_)/ke_) / (s^3)*(tm_*te_)+(s^2)*(tm_)+ s+ (2*pi/ke_)
ilaplace(F, s)
ilaplace(g, s)
%[num,den] = tfdata(T);

%G_sym = poly2sym(cell2mat(num),s)/poly2sym(cell2mat(den),s);
%Y_lap_sym = G_sym/s; % U(s) = 1/s for the unit step
%y_time_sym = ilaplace(Y_lap_sym);
% go to 1 rotation
%step(T)

