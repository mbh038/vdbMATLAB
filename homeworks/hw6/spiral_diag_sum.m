function [ sumX ] = spiral_diag_sum( n )
%SPIRAL_DIAG_SUM Summary of this function goes here
    
%   gives the sum of the two diagonals of a spiral
%   n x n matrix, where n is an odd positive integer.

tic

sumX=1;
if n==1
    return
end

for ni=3:2:n
    mult=0;
    j=0;
    while j <= (ni-3)/2
        mult=mult+j;
        j=j+1;
    end
    n0=ni+mult*8;
    sumN=4*n0+6*(ni-1);
    sumX=sumX+sumN;
end
sumX
toc
end