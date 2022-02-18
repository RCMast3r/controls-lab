clc;
clear all;
close all;
R=30;
C=0.0237;
dt=0.01;
t=0:dt:10;
% v=0.1*ones(1, length(t));
v=0.1*sin(2*pi*t);
q(1) = 0;
for i=1:length(t)
        dq(i)=v(i)/R-q(i)/(R*C);
        q(i+1)=dq(i)*dt+q(i);
end
i=dq;
plot(t,i);
xlabel('Time (s)', 'Fontsize',14,'FontWeight','bold', 'Color','b')
ylabel('Current (A)', 'FontSize', 14, 'FontWeight','bold', 'Color', 'b')

