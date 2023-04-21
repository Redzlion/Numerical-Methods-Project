clear
close all
clc

%% Case 1
a=0; %x's Initial value for the integral 
b=1; %x's final value for the integral 
c=0; %y's Initial value for the integral 
d=2; %y's final value for the integral 
f=@(x,y) x^2*y^2; %Function 
[I]=GaussLegendre(a,b,c,d,f);
fprintf('Case 1: \n')
fprintf('a:  %1.4f\n',a)
fprintf('b:  %1.4f\n',b)
fprintf('c:  %1.4f\n',c)
fprintf('d:  %1.4f\n',d)
fprintf('Function:')
disp(f)
fprintf('Integral value:  %1.4f\n\n',I)

%% Case 2
a=0.5; %x's Initial value for the integral 
b=1; %x's final value for the integral 
c=-1; %y's Initial value for the integral 
d=0; %y's final value for the integral 
f=@(x,y) x^3 + y^2 - x - y; %Function 
[I]=GaussLegendre(a,b,c,d,f);
fprintf('Case 2: \n')
fprintf('a:  %1.4f\n',a)
fprintf('b:  %1.4f\n',b)
fprintf('c:  %1.4f\n',c)
fprintf('d:  %1.4f\n',d)
fprintf('Function:')
disp(f)
fprintf('Integral value:  %1.4f\n\n',I)

%% Case 3
a=-1; %x's Initial value for the integral 
b=1; %x's final value for the integral 
c=-1; %y's Initial value for the integral 
d=1; %y's final value for the integral 
f=@(x,y) exp(x-y); %Function 
[I]=GaussLegendre(a,b,c,d,f);
fprintf('Case 3: \n')
fprintf('a:  %1.4f\n',a)
fprintf('b:  %1.4f\n',b)
fprintf('c:  %1.4f\n',c)
fprintf('d:  %1.4f\n',d)
fprintf('Function:')
disp(f)
fprintf('Integral value:  %1.4f\n\n',I)