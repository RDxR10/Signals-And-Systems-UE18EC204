%Q2)

%a)
t=0:0.01:10;
 x=exp(-2*t);
 w=-10:0.01:10;
 for j=1:length(w)
Xjw(j)=(sum(x.*exp(-i*w(j)*t)))*0.01;
       end
 %plot x(t)
 subplot(311);
 plot(t,x);
 title('x(t)=e^(at)u(-t), a>0');
 %plot magnitude spectrum
 subplot(312);
 plot(w,abs(Xjw));
 title('Magnitude spectrum');
 xlabel('frequency w');
 ylabel('|X(jw)|');
 %plot phase spectrum
 subplot(313);
 plot(w,angle(Xjw));
 title('Phase spectrum');
 xlabel('frequency w');
 ylabel('Phase (X(jw))');
 
% b)
 
  t=-10:0.01:0;
 x=exp(2*t);
 w=-10:0.01:10;
 for j=1:length(w)
Xjw(j)=(sum(x.*exp(-i*w(j)*t)))*0.01;
       end
 %plot x(t)
 subplot(311);
 plot(t,x);
 title('x(t)=e^(at)u(-t), a>0');
 %plot magnitude spectrum
 subplot(312);
 plot(w,abs(Xjw));
 title('Magnitude spectrum');
 xlabel('frequency w');
 ylabel('|X(jw)|');
 %plot phase spectrum
 subplot(313);
 plot(w,angle(Xjw));
 title('Phase spectrum');
 xlabel('frequency w');
 ylabel('Phase (X(jw))');

%(c)
t=0:1/100:10-1/100;
x= ((0.5).^t).*heaviside(t);
y=fft(x);
disp(y);
m=abs(y);
y(m<1e-6) =0;
p= unwrap(angle(y));
f= (0:length(y)-1)*100/length(y);

subplot(2,1,1)
plot(f,m)
title('Magnitude')
ax=gca;
ax.XTick=[15 40 60 85];
 
subplot(2,1,2)
plot(f,p*180/pi)
title('Phase')
ax=gca;
ax.XTick = [15 40 60 85];



%(d)
t=-(10-1/50):1/50:0;
%taking a as 0.5
x=-((0.5).^t).*heaviside(-t-1);
y=fft(x);
disp(y);
m=abs(y);
y(m<1e-6)=0;
p=unwrap(angle(y));
f=(0:length(y)-1)*100/length(y);

subplot(2,1,1)
plot(f,m);
title('Magnitude')
ax=gca;
ax.XTick=[15 40 60 85];
 
subplot(2,1,2)
plot(f,p*180/pi)
title('Phase');
ax=gca;
ax.XTick=[15 40 60 85];


