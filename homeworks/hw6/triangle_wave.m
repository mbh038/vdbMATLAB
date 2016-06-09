function [ tSums ] = triangle_wave( n )
%TRIANGLE_WAVE Summary of this function goes here
%   Detailed explanation goes here

% n        non-negative integer
% tsums    row vector

t=[0:1000]*4*pi()/1000

tSums=0
for k=0:n
 tSums =tSums + ( (-1)^k *  sin((2*k+1)*t)) / (2*k + 1 ) ^ 2;
end

end