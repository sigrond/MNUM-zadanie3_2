function [ output_args ] = Zadanie2( input_args )
%Zadanie2 rozwi¹zanie zadania 2
%   Detailed explanation goes here

f=@(x)-x^4+1.5*x^3+1.5*x^2+0.5*x+1;
df1=@(x)-4*x^3+4.5*x^2+3*x+0.5;
df2=@(x)-12*x^2+9*x+3;

for i=[-0.9, 2.3, 0.04+0.6i, 0.04-0.6i]
    [X0,Xi]=MM2(i,f,df1,df2);
    X0
end

end

