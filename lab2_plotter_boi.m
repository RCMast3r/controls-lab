t=out.simout.Time(:,1);
y=out.simout.Data(:,1);

% t=0:.05:15;
G=tf(10,[1 1 9]);
u=ones(size(t));
%y=lsim(G,u,t);
plot(t,y,'-r')
y_ss=y(end);% steady state value
a=find(abs(y-.1*y_ss) < 0.1,1);
b=find(abs(y-.9*y_ss) < 0.1,1);
Rise_time=t(b)-t(a);
y_max=max(y)
c=find(y==y_max);
Peak_time=t(c)
OS=((y_max-y_ss)/y_ss)*100
Error=1-y_ss;
d=find(abs(y-y_ss) < .02*y_ss);
j=1;
for i=1:length(d)
    if (abs(y_ss-y(d(i):end))<.02*y_ss)
        if(j==1)
           Settling_time=t(d(i+1));
           ys=y(d(i+1));
           j=0;
        end
    end
end
Settling_time
hold on
plot([Peak_time, Peak_time],[0,y_max],'--k')
plot([Settling_time,Settling_time],[0,ys],'--k')
plot([t(1),t(end)],[1.02*y_ss,1.02*y_ss],'--k')
plot([t(1),t(end)],[0.98*y_ss,0.98*y_ss],'--k')
