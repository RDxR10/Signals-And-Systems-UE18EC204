n= 1:10;
unitstep = zeros(size(n)); 
unitstep2 = zeros(size(n));
unitstep(n>=2)= 1; 
unitstep2(n>7)=1;
x=unitstep-unitstep2;
figure(1)
stem(n,x);
disp(n)
xlabel('n');
ylabel('x(n)');
title('input response')
axis([-1 10 0 2]);


n= 0:12;
unitstep = zeros(size(n)); 
unitstep2 = zeros(size(n));
unitstep(n>=0)= 1; 
unitstep2(n>10)=1;
h=unitstep-unitstep2;
figure(2)
stem(n,h);
xlabel('n');
ylabel('h(n)');
title('impulse response')
axis([-2 12 0 2]);

m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];

for i=1:n+m-1
Y(i)=0;
for j=1:m
if(i-j+1>0)
Y(i)=Y(i)+X(j)*H(i-j+1);
else
end
end
end
figure(3);
stem(Y);
ylabel('Y[n]'); 
xlabel('n'); 
grid on;
title('Convolution of Two Signals without conv function');



figure(4)
stem(conv(x,h))
ylabel('Y[n]'); 
xlabel('n'); 
grid on;
title('Convolution of Two Signals with conv function');