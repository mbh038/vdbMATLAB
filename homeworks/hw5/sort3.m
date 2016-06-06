function [ smallest,middle,largest ] = sort3( v )
%SORT3 Summary of this function goes here
%   Detailed explanation goes here

if v(2) < v (1)
    temp = v(1);
    v(1) = v(2);
    v(2) = temp;
end
if v(3) < v(1)
    temp = v(1);
    v(1) = v(3);
    v(3) = temp;
end
if v(3) < v(2)
    temp = v(2);
    v(2) = v(3);
    v(3) = temp;
end
smallest=v(1);
middle=v(2);
largest=v(3);
end