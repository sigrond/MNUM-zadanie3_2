function [ X, Xiteracje ] = M_siecznych( a0, b0, f )
%M_siecznych znajdowanie pierwiastków metodą siecznych
%   a0, b0 - przedział
%   f - funkcja
%   X - miejsce zerowe
%   Xiteracje - punkty w kolejnych iteracjach
delta=0.0001;%dokładność rozwiązania
epsylon=0.0001;%długość przedziału
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

