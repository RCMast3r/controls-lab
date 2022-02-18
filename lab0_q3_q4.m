
dt=0.01
t=0:dt:10;

u=ones(1,length(t));
y=zeros(1,length(t));
yy=zeros(1,length(t));
yyy=zeros(1,length(t));
diff=zeros(1,length(t));
for i=1:(length(t)-1)
        yyy(i) = sin(2*pi*t(i)) - 3*yy(i) - 2*y(i);
        % yyy(i) = 1 - 3*yy(i) - 2*y(i);
        yy(i+1) = yyy(i)*dt + yy(i);
        y(i+1) = yy(i)*dt + y(i);
end

hold on
subplot(3,1,1);
plot(t,y);
xlabel('Time (t)', 'Fontsize',14,'FontWeight','bold', 'Color','b')
ylabel('response (euler)', 'FontSize', 14, 'FontWeight','bold', 'Color', 'b')

% y_a = 0.5 + 0.5 * exp(-2*t) - exp(-1*t)
y_a = (2*pi*exp(-1*t))/ ((4*pi*pi)+1) - (pi*exp(-2*t))/ ((2*pi*pi)+2) - (3*pi*cos(2*pi*t) - sin(2*pi*t) + 2 *pi*pi*sin(2*pi*t))/( (pi*pi +1)*(8*pi*pi+2));
subplot(3,1,2);
plot(t,y_a);


xlabel('Time (t)', 'Fontsize',14,'FontWeight','bold', 'Color','b')
ylabel('response (actual)', 'FontSize', 14, 'FontWeight','bold', 'Color', 'b')


for i=1:(length(t)-1)
        diff(i)=y_a(i) - y(i);
end
subplot(3,1,3);
plot(t, diff)
xlabel('Time (t)', 'Fontsize',14,'FontWeight','bold', 'Color','b')
ylabel('error', 'FontSize', 14, 'FontWeight','bold', 'Color', 'b')

