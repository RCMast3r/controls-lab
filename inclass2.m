x0 = 100;    % m
v0 = 40;     % m/s
a  = -9.8;   % m/s^2
t = 0:0.5:5; % s
x = x0 + v0*t + a*t.^2
figure(1); clf;
plot(t, x, '.');
xlabel('Time (s)');
ylabel('Height (m)');
hold on;
plot([0 5], 119.95*[1 1], ':');
ind = find(x == 119.95)
ind = find(abs(x-119.95) < 0.001);
disp(['Index : ' num2str(  ind ) char(10) ...
      'Time  : ' num2str(t(ind)) char(10) ...
      'Height: ' num2str(x(ind)) char(10)]);
ind = find(abs(x-118) < 5 );
disp(['Index : ' num2str(  ind ) char(10) ...
      'Time  : ' num2str(t(ind)) char(10) ...
      'Height: ' num2str(x(ind)) char(10)]);



