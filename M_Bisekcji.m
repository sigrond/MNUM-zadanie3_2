function [ X ] = M_Bisekcji( a0, b0, f )
%M_Bisekcji znajdowanie pierwiastków metod¹ bisekcji
%   a0, b0 - przedzia³
%   f - funkcja
%   X - miejsca zerowe
a=a0;
b=b0;
delta=0.0001;%dok³adnoœæ rozwi¹zania
epsylon=0.0001;%d³ugoœæ przedzia³u
fn=0;
c=0;
while abs(fn)>delta || abs(b-a)>epsylon
    c=(a+b)/2;
    fn=f(c);
    fac=f(a)*f(c);
    fcb=f(c)*f(b);
    if fac<0
        b=c;
    elseif fcb<0
        a=c;
    else
        disp('metoda nie znajduje pierwiastka w przedziale');
    end
end
X=c;
end

