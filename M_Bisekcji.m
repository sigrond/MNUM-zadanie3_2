function [ X ] = M_Bisekcji( a0, b0, f )
%M_Bisekcji znajdowanie pierwiastk�w metod� bisekcji
%   a0, b0 - przedzia�
%   f - funkcja
%   X - miejsca zerowe
a=a0;
b=b0;
delta=0.0001;%dok�adno�� rozwi�zania
epsylon=0.0001;%d�ugo�� przedzia�u
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

