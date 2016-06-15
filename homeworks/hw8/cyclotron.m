function [ E,N ] = cyclotron( V )
%CYCLOTRON Summary of this function goes here
%   Detailed explanation goes here

%deuteron mass / kg
m=3.344e-27;
% deuteron charge / C
q=1.603e-19;
%magnetic field strength / T
B=1.600;

%radii
r=zeros(1,1000);

r(1)=sqrt(m*V/(q*B^2));

%initial position
s0=r(1)/2;
p=-s0+2*r(1); % given as s0 in the problem


n=1;
fprintf('N= %d, r= %d, p= %d\n',n,r(1),p)
while p > -0.5
    n=n+1;
    r(n)=sqrt(r(n-1)^2+2*r(1)^2);
    p=p+2*r(n)*(-1)^(n-1);
    fprintf('N= %d, r= %d, p= %d\n',n,r(n),p)
end

N=n;
E=V*n*1e-6;
plot(1:n,r(1:n))
end