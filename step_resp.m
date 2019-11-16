syms ircont(t) irdisc(n)

ircont(t) = input("Enter the impulse response for continuous time:")
irdisc(n) = input("Enter the impulse response for discrete time:")

srcont(t) = int(ircont,t)
syms n
assume(n > 0)
% srdisc(n) = subs(irdisc(n),n,0:100)

srvalue_cont = zeros(10);
count = 1;
for i = 1:10
for j = 1:10
        srvalue_cont(i,j) = double(srcont(count));
        count = count + 1;
end
end
fprintf("Values of step response s(t) are")
srvalue_cont


fprintf("Values of step response s[n] are")
srdisc(n) = subs(irdisc(n),n,0:100)