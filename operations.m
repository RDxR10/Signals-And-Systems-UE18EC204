t=input('Enter the range of time for the signal:')
x=input('enter the continous time signal:')
a=input('Enter the scaling factor:')
b=input ('enter the shifting factor')
x=CTscaling(t,x,a)
x1=CTshifting(t,x,b)
x3=CTreversal(t,x)



function x=CTscaling(t,x,a)   

figure(1)
subplot(2,1,1) 
plot(t,x)
xlabel('time');
ylabel('amplitude');
title('input signal');

u=1/a.*t

subplot(2,1,2);
plot(u,x);
xlabel('time');
ylabel('amplitude');
title('timescaled signal');
display(x);
end

function x1=CTshifting(t,x1,b)
    figure(2)
subplot(2,1,1) 
plot(t,x1)
xlabel('time');
ylabel('amplitude');
title('input signal');
y=t-b
subplot(2,1,2);
plot(y,x1);
xlabel('time');
ylabel('amplitude');
title('shifted signal');
display(x1);
end

function x3=CTreversal(t,x3)
    figure(3)
     subplot(2,1,1) 
 plot(t,x3)
 xlabel('time');
 ylabel('amplitude');
 title('input signal');
 r=-t
 subplot(2,1,2);
 plot(r,x3);
 xlabel('time');
 ylabel('amplitude');
 title('reversed signal');
 display(x3);
end