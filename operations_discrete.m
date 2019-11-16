n=input('Enter the number of samples for the signal:')
x=input('enter the discrete time signal:')
a=input('Enter the scaling factor:')
b=input ('enter the shifting factor')

x=DTscaling(n,x,a)
x1=DTshifting(n,x,b)
x3=DTreversal(n,x)



function x=DTscaling(n,x,a)   
n=0:1:n-1
figure(1)
subplot(2,1,1) 
stem(n,x)
xlabel('no of samples');
ylabel('amplitude');
title('input signal');
subplot(2,1,2);
stem(u,x);
xlabel('no ofsamples');
ylabel('amplitude');
title('timescaled signal');
display(x);
end

function x1=DTshifting(n,x1,b)
    n=0:1:n-1
    figure(2)
subplot(2,1,1) 
stem(n,x1)
xlabel('no of samples');
ylabel('amplitude');
title('input signal');
y=n-b
subplot(2,1,2);
stem(y,x1);
xlabel('no of samples');
ylabel('amplitude');
title('shifted signal');
display(x1);
end

function x3=DTreversal(n,x3)
    n=0:1:n-1
    figure(3)
     subplot(2,1,1) 
 stem(n,x3)
 xlabel('no of samples');
 ylabel('amplitude');
 title('input signal');
 r=-n
 subplot(2,1,2);
 stem(r,x3);
 xlabel('no of samples');
 ylabel('amplitude');
 title('reversed signal');
 display(x3);
end