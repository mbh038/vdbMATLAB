function [ halfsum ] = halfsum( A )
%HALFSUM Summary of this function goes here
%   Detailed explanation goes here

[n,m]=size(A);
suma=0;
for i = 1 : min(n,m)
    suma=suma+sum(A(n-i+1,i:m));   
end
halfsum=suma;