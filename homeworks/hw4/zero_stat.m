function [ pc0 ] = zero_stat( M )
%ZERO_STAT Summary of this function goes here
%   Detailed explanation goes here

full=ones(size(M));
sumfull=sum(full(:));
pc0=100*(sumfull-sum(M(:)))/sumfull;

end