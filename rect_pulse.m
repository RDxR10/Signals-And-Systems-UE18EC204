t = (-1:0.01:20);  
unitstep = zeros(size(t)); 
unitstep2 = zeros(size(t));
unitstep(t>=0) = 1; 
unitstep2(t>=5)=1;
y=10.*unitstep-10.*unitstep2;
plot(t,y)
xlabel('time')
ylabel('y(t)')
ylim([0 12])