syms t
x=(exp(-t)*(heaviside(t)-heaviside(t-1)))+(exp(-t)*(heaviside(t-1)-heaviside(t-2)));
fplot(t,x);
subplot(3,1,1);
y=(exp(t)*(heaviside(t)-heaviside(t-1)))+(exp(-t)*(heaviside(t-1)-heaviside(t-2)));
fplot(t,y);
X=fourier(x);
Y=fourier(y);

%Assuming a=3 & b=4%
z=(3*x)+(4*y);
Z=fourier(z);
disp(X);
disp(Y);
disp(Z);

%Time Shift 3A)
%Shift factor =1
x_shift=(exp(-(t-1))*(heaviside(t-1)-heaviside(t-2)))+(exp(-(t-1))*(heaviside(t-2)-heaviside(t-3)));
X_S=fourier(x_shift);
disp(X_S)
y_shift=(exp((t-1))*(heaviside(t-1)-heaviside(t-2)))+(exp(-(t-1))*(heaviside(t-2)-heaviside(t-3)));
Y_S=fourier(y_shift);
disp(Y_S)