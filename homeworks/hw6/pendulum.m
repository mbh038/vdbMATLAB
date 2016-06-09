function [ T ] = pendulum( L,a0 )
%PENDULUM Summary of this function goes here
%   L positive scalar
%   a0 positive scalar less than pi 

% alpha = angluar acceleration
% g = acceleration due to gravity
% omega = angular velocity

if L <=0
    fprintf('L must be a positive real number')
    T=0
    return
end
    

theta=a0;
g=9.8;
omega=0;
deltat=1e-6;

T=0;
while theta>0
    T=T+deltat;
    alpha=g*sin(theta)/L;
    omega=omega+alpha*deltat; 
    theta=theta-omega*deltat;
end
T=4*T
%formula=T/(2*pi*sqrt(L/g))
end