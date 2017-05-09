function [ X ] = M_Bisekcji( a0, b0, f )
%M_Bisekcji znajdowanie pierwiastków metodą bisekcji
%   a0, b0 - przedział
%   f - funkcja
%   X - miejsca zerowe
a=a0;
b=b0;
delta=0.0001;%dokładność rozwiązania
epsylon=0.0001;%długość przedziału
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

