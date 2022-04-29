clear all;close all; clc
t=0:.01:10;
%G=tf(20,[1 20]);
G = zpk([-6],[-2 -3 -5],4.7616)
u=ones(size(t));
y=lsim(G,u,t);
plot(t,y,'-r')
y_ss=y(end); % steady state value
a=find(abs(y-.1*y_ss) < 0.1,1);
b=find(abs(y-.9*y_ss) < 0.1,1);
Rise_time=t(b)-t(a);
y_max=max(y)
c=find(y==y_max);
Peak_time=t(c)
OS=((y_max-y_ss)/y_ss)*100
Error=1-y_ss;
d=find(abs(y-y_ss) < .02*y_ss);
d2=find(abs(y-y_ss) <= 0.1*y_ss);
d3=find(abs(y-y_ss) <= 0.9*y_ss);
j=1;
j2=1;
j3=1;
for i=1:length(d)
    if (abs(y_ss-y(d(i):end))<.02*y_ss)
        if(j==1)
           Settling_time=t(d(i+1));
           ys=y(d(i+1));
           j=0;
        end
    end
end
for i=1:length(d2)
    if (abs(y_ss-y(d2(i):end))<=.1*y_ss)
        if(j2==1)
           rise_time_f=t(d2(i+1));
           ys2=y(d2(i+1));
           j2=0;
        end
    end
end
for i=1:length(d3)
    if (abs(y_ss-y(d3(i):end))<=.9*y_ss)
        if(j3==1)
           rise_time_i=t(d3(i+1));
           
           ys3=y(d3(i+1));
           tc_point_y=ys3;
           tc_point_x=t(d3(i+1));
           j3=0;
        end
    end
end
Settling_time
rise_time_f
rise_time_i
hold on
% plot([Peak_time, Peak_time],[0,y_max],'--k')
plot([Settling_time,Settling_time],[0,ys],'--k')
plot([rise_time_i,rise_time_i],[0,ys3],'--k')
plot([rise_time_f,rise_time_f],[0,ys2],'--k')

% play with these numbers to adjust how long to extend out the time
% constant line
plot([0,tc_point_x, (tc_point_x+0.07)],[0,tc_point_y, ((tc_point_y/tc_point_x)*(tc_point_x+0.07))]) 
time_constant = 1/(tc_point_y/tc_point_x) % rise over run from 0,0

rise_time= rise_time_f-rise_time_i
%plot([t(1),t(end)],[1.02*y_ss,1.02*y_ss],'--k')
%plot([t(1),t(end)],[0.98*y_ss,0.98*y_ss],'--k')
