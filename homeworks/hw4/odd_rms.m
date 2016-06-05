function [ orms ] = odd_rms( nn )
%ODD_RMS Summary of this function goes here
%   Detailed explanation goes here

s=(1:2:2*nn-1)
orms=sqrt(s*s'/nn)

end