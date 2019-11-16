a1 = 5;
t = -2:0.001:2;
x1 = 20*sin(2*pi*1000*t-pi/3).*exp(-a1*t)
plot(t,x1) 
axis([0 1 -5 5])
hold on
a2=7.5;
x2 = 20*sin(2*pi*1000.*t-pi/3).*exp(-a2.*t)
plot(t,x2)

hold on
a3=10;
x3 = 20*sin(2*pi*1000.*t-pi/3).*exp(-a3.*t)
plot(t,x3)
legend('a=5','a=7.5','a=10')

hold off