function [ indexes ] = small_elements( X )
%SMALL_ELEMENTS Summary of this function goes here
%   Detailed explanation goes here
indexes=[]
[n m]=size(X)
for j=1:m
    for i = 1:n
        if X(i,j)<i*j
            indexes=[indexes;i j]
        end
    end
end