function [ X, Xiteracje ] = M_siecznych( a0, b0, f )
%M_siecznych znajdowanie pierwiastków metod¹ siecznych
%   a0, b0 - przedzia³
%   f - funkcja
%   X - miejsce zerowe
%   Xiteracje - punkty w kolejnych iteracjach
delta=0.0001;%dok³adnoœæ rozwi¹zania
epsylon=0.0001;%d³ugoœæ przedzia³u
fn=0;
j=0;
xnm1=a0;
xn=b0;
while abs(fn)>delta || abs(xn-xnm1)>epsylon
    xnp1=(xnm1*f(xn)-xn*f(xnm1))/(f(xn)-f(xnm1));
    xnm1=xn;
    xn=xnp1;
    fn=f(xn);
    j=j+1;
    Xiteracje(j,1)=j;
    Xiteracje(j,2)=xn;
    Xiteracje(j,3)=fn;
end
X=xn;
end

