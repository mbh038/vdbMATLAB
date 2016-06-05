function [ N ] = reverse_diag( n )
%REVERSE_DIAG Summary of this function goes here
%   Detailed explanation goes here
N=zeros(n);
N(n:max(1,n-1):max(n^2-1,1))=1;
end