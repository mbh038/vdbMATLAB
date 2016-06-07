function [  mbd ] = spherical_mirror_aberr( fn,D )
%SPHERICAL_MIRROR_ABERR 
% fn is the “f-number” of a concave spherical mirror
% D is its diameter in millimeters
% mbd is the mean blur diameter in millimeters. 

%   Detailed explanation goes here
f=fn*D;
delta_x = 0.01;
x = 0:delta_x:D/2;
theta = asin(x/(2*f));
d=2*f*tan(2*theta).*(1./cos(theta)-1);

mbd=(8*delta_x/D^2)*x*d'

end