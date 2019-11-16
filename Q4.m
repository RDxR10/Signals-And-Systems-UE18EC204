%(a)
syms n
oldparam=sympref('HeavisideAtorigin',1);
h2=(((1/4)^n)*heaviside(n));
H2=ztrans(h2);
disp('z transform is');
disp(H2);

%(b)
syms n
oldparam=sympref('HeavisideAtorigin',1);
h2=(n*sin((pi*n)/2)*heaviside(n));
H2=ztrans(h2);
H22=simplify(H2);
disp('z transform is');
disp(H22);

%(c)
syms n
oldparam=sympref('HeavisideAtorigin',1);
h3=((3^(n-2))*heaviside(n));
H3=ztrans(h3);
disp('z transform is');
disp(H3);

%(d)
syms n
oldparam=sympref('HeavisideAtorigin',1);
h4=heaviside(n);
H4=ztrans(h4);
disp('z transform is');
disp(H4);