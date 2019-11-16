syms y(t)
Dy = diff(y);
%As 0<=t<=20,the value of u(t)=1 
ode = diff(y,t,2)+5*diff(y,t)+4*y == 3*cos(t)*1
cond1 = y(0) == 2;
cond2 = Dy(0) == -5;
conds=[cond1 cond2];
ySol(t)=dsolve(ode,conds);
ySol=simplify(ySol)
fplot(ySol)
xlabel('time')
ylabel('y(t)')