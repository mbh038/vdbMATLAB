function [ s ] = sum3and5muls( n )
%SUM3AND5MULS Summary of this function goes here
%   Detailed explanation goes here

muls3and5=(1:n)/3-fix((1:n)/3)==0 | (1:n)/5-fix((1:n)/5)==0;
s=(1:n)*muls3and5'

end