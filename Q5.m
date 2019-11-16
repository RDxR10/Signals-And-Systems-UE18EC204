syms z n
%a
H1=(z/(z-1));
h1=iztrans(H1);
disp('inverse z transform is:');
disp(h1);

%b
syms z n
H2=((z^2-3*z)/((z^2)-(1.5*z)-1));
h1=iztrans(H2);
disp('inverse z transform is:');
disp(h1);

%c
syms z n
H3=((1+(7/(6*z)))/((1-(1/(2*z)))*(1+(1/(3*z)))));
h1=iztrans(H3);
disp('inverse z transform is:');
disp(h1);