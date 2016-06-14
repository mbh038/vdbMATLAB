function [ xzero ] = find_zero( f,x1,x2 )
%FIND_ZERO Summary of this function goes here
%   Detailed explanation goes here

xmin=x1;
xmax=x2;

tolerance=1e-10;
dx=0.001

while 1 > 0
    newx=xmin+(xmax-xmin)/2;
    y=f(newx);
    dydx=(f(newx+dx)-f(newx-dx))/(2*dx)
    if abs(y) < tolerance
        xzero=newx;
        break
    elseif y  * dydx > 0 
            xmax=newx;
    elseif y * dydx < 0
            xmin=newx;
%         elseif y > 0 && dydx < 0
%             xmin=newx;
%         elseif y < 0 && dydx < 0
%             xmax=newx;
    end

end

end