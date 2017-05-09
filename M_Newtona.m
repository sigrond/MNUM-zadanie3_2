function [ X, Xiteracje ] = M_Newtona( a0, b0, f, df )
%M_Newtona znajdowanie pierwiastków metod¹ Newtona
%   a0, b0 - przedzia³
%   f - funkcja
%   df - pochodna funkcji
%   X - miejsce zerowe
%   Xiteracje - punkty w kolejnych iteracjach
epsylon=0.0001;%d³ugoœæ przedzia³u
xk=b0;
xkm1=a0;
j=0;
while abs(f(xk))>epsylon || abs(xk-xkm1)>epsylon
    xkp1=xk-(f(xk)/df(xk));
    xkm1=xk;
    xk=xkp1;
    fn=f(xk);
    j=j+1;
    Xiteracje(j,1)=j;
    Xiteracje(j,2)=xk;
    Xiteracje(j,3)=fn;
end
X=xk;
end

