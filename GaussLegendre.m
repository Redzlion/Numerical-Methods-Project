function [I]=GaussLegendre(a,b,c,d,f)
%% Gauss Legendre
% [a,b]: Interval for x
% [c,d]: Interval for y
% F: function handle to integrate
%Interval [-1,1] points 
% x's 2-point
x1=-1/sqrt(3); %first point for 2-point Gauss Legendre
x2=1/sqrt(3); %second point for 2-point Gauss Legendre
wx1=1; %first weight for 2-point Gauss Legendre
wx2=1; %second weight for 2-point Gauss Legendre
x=[x1 x2]; %X's vector
wx=[wx1 wx2]; %Weight vector for x
% y's 3-point
y1=-sqrt(3/5); %first point for 3-point Gauss Legendre
y2=0; %second point for 3-point Gauss Legendre 
y3=sqrt(3/5); %third point for 3-point Gauss Legendre
wy1=5/9; %first weight for 3-point Gauss Legendre
wy2=8/9; %second weight for 3-point Gauss Legendre
wy3=5/9; %third weight for 3-point Gauss Legendre
y=[y1 y2 y3]; %Y's vector
wy=[wy1 wy2 wy3]; %Weight vector for y
%Integral
I=0; %Initial value
u=((b-a)/2)*x+((a+b)/2); %Transformation for x of Gauss Legendre to the [a b] interval
v=((d-c)/2)*y+((d+c)/2); %Transformation for y of Gauss Legendre to the [c d] interval
for ii=1:2
    for jj=1:3
        I=I+((b-a)*(d-c)/4)*wx(ii)*wy(jj)*f(u(ii),v(jj)); %Compute the formula for each point
    end
end
end