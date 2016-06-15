function [ C ] = huge_add( A,B)
%HUGE_ADD Summary of this function goes here
%   A, B both strings of digits only
%   C=A+B, also a string.

%check if inputs are both strings
if ischar(A) ==0 || ischar(B)==0
    C=-1
    return
end

%check if both input strings contain only digits
digitStrA = A(isstrprop(A,'digit'));
digitStrB = B(isstrprop(B,'digit'));
if length(digitStrA) < length(A) || length(digitStrB) <length(B)
    C=-1
    return
end

%pad leading end of shorter string with zeros.
pad=[];
for i=1:abs(length(digitStrA)-length(digitStrB))
    pad=[pad,'0'];
end
if length(digitStrA)>length(digitStrB)
    digitStrB=[pad,digitStrB];
elseif length(digitStrB)>length(digitStrA)
    digitStrA=[pad,digitStrA];
end

%add the two strings by way of traditional arithmetic. Do it this way to cope with huge input values.
carry=0;
for i=length(digitStrA):-1:1
    add=str2num(digitStrA(i))+str2num(digitStrB(i))+carry;
    C(i)=num2str(mod(add,10));
    carry=floor(add/10);
end
    
end