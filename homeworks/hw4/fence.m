function [ ns,np ] = fence( lng,seg )
%FENCE Summary of this function goes here
%   Detailed explanation goes here

ns=ceil(lng/seg);
np=ns+1;

end