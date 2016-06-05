function [ sindeg,ave_sindeg ] = sindeg( deg )
%SINDEG Summary of this function goes here
%   Detailed explanation goes here

sindeg=sin(degtorad(deg));
ave_sindeg=mean(sindeg(:));

end