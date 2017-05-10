function [ X, Xiteracje ] = MM2( x,f,df1,df2 )
%MM2 metoda Mulllera MM2
%   x - punkt startowy
%   f - funkcja
%   df1 - pierwsza pochodna funkcji
%   df2 - druga pochodna funkcji
xn=x;
j=0;
for i=1:10%ograniczenie na liczbe iteracji
    p=sqrt((df1(xn))^2 - 2* f(xn)*df2(xn));
    if abs(df1(xn)+p) > abs(df1(xn)-p)%wybór pierwiastka o mniejszym module
        z=(-2*f(x))/(df1(xn)+p);
    else
        z=(-2*f(xn))/(df1(xn)-p);
    end
    xn=xn+z;
    fn=f(xn);
    j=j+1;
    Xiteracje(j,1)=j;
    Xiteracje(j,2)=xn;
    Xiteracje(j,3)=fn;
    if abs(fn)<0.0001
        break;
    end
end
X=xn;
end

