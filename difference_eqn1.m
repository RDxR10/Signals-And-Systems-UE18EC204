n= -2:10;
unitstep = zeros(size(n)); 
unitstep2 = zeros(size(n));
unitstep(n>=0) = 1; 
unitstep2(n>3)=1;
x=unitstep-unitstep2;
c = [1 2]
y = [c]
for i = 3:13
y(i) = y(i-2)*0.125+y(i-1)*0.25+x(i)+0.5*x(i-1)
end
 subplot(1,2,1)
stem(n,x)
ylabel('x[n]')
xlabel('n')
subplot(1,2,2)
stem(n,y)
ylabel('y[n]')
xlabel('n')