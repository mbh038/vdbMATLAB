function [ p ] = poly_val( c0,c,x )
%POLY_VAL 
%c0,x    scalars;
% c      vector
% p      scalar
%   Detailed explanation goes here
c=c(:)'
N=length(c);
switch N
    case 0
        p = c0;
        return
    case 1
        p = c0+c * x
    otherwise
        %if size(c,1)>1
         %   c=c'
        %end
        p=c0+sum(c.*([x*ones(N,1)]'.^[1:1:N]));

end