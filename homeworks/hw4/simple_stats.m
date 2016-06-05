function [ S ] = simple_stats( M )
%SIMPLE_STATS Summary of this function goes here
%   Detailed explanation goes here

S(:,1)=mean(M');
S(:,2)=median(M');
S(:,3)=min(M');
S(:,4)=max(M');

end