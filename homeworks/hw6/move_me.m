function [ w ] = move_me( v,a )
%MOVE_ME Summary of this function goes here
%   Detailed explanation goes here

% if only one argument, move zeros to end
if nargin == 1
    a=0;
end

% find how many matches
nfound=sum(v==a);

% if none, return v as is.
if nfound == 0
    w=v;
    return
end
    
%blank output vector
w=zeros(1,length(v));

%put matches at the end of w
for i = 1:nfound
   w(end:-1:end-i+1)=a;
end

% indices of elements in v that do not match a
nota=find(v~=a);

% fill beginning of w with these elements.
count=1;
for i= 1:length(nota)
    w(count)=v(nota(i));
    count=count + 1;
end

end