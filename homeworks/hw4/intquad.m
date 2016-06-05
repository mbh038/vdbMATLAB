function [ Q ] = intquad( n,m )
%INTQUAD Summary of this function goes here
%   Detailed explanation goes here
Qtl=zeros(n,m);
Qtr=ones(n,m);
Qbl=2*ones(n,m);
Qbr=3*ones(n,m);

Q=[Qtl,Qtr;Qbl,Qbr];

end