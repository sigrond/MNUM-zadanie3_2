function [ output_args ] = Zadanie1( input_args )
%Zadanie1 rozwiązanie zadania 1
%   Detailed explanation goes here

f=@(x)0.55.*x.*sin(x)-log(x+2);
df=@(x)(-1/(x+2)+0.55*sin(x)+0.55*x*cos(x));

a=2;
b=12;
X=a:0.01:b;

figure('name','Wykres I');
ax=axes;
hold(ax,'on');
plot(ax,X,f(X));

step=1;%krok szukania izolacji pierwiastka
jb=0;
for i=a:step:b-step
    p1=i;
    p2=i+step;
    if f(p1)*f(p2)<0 %izolacja
        plot(ax,p1,0,'<g');
        plot(ax,p2,0,'>g');
        [X0,Xi]=M_Bisekcji(p1,p2,f);
        [X0,Xi]=M_siecznych(p1,p2,f);
        [X0,Xi]=M_Newtona(p1,p2,f,df);
        jb=jb+1;
        XB(jb)=X0;
        plot(ax,X0,f(X0),'or');
    end
end

