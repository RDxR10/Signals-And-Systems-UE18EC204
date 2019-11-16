syms srcont(t) srdisc(n)

srcont(t) = input("Enter the step response for continuous time:")
srdisc(n) = input( "Enter the step response for discrete time")
ircont(t) = diff(srcont)
irdisc(n) = srdisc(n) - srdisc(n-1)

irvalue_cont=zeros(10);
count = 1;
for i = 1:10
for j = 1:10
        irvalue_cont(i,j) = vpa(ircont(count));
        count = count + 1;
end
end
fprintf("The first 100 values of impulse response h(t) are")
irvalue_cont

irvalue_disc = zeros(10);
count = 1;
for i = 1:10
for j = 1:10
        irvalue_disc(i,j) = vpa(irdisc(count));
        count = count + 1;
end
end
fprintf("The first 100 values of impulse response h(n) are")
irvalue_disc
