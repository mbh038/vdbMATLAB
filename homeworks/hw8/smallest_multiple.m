function [ lcm ] = smallest_multiple( n )
%SMALLEST_MULTIPLE Summary of this function goes here
%   Detailed explanation goes here

%check that n is a positive integer scalar
if ~isscalar(n) || n < 1 || n ~= floor(n)
    fprintf('Invalid input. Must be a positive integer scalar');
    return
end

maxval=intmax('uint64');

plist=primes(n);

for i=1:length(plist)
    powers(i)=1;
    while plist(i)^(powers(i)+1) <= n
        powers(i)=powers(i)+1;
    end
end
   
pplist=uint64(plist) .^uint64(powers) ;   

prod=uint64(1)
for i=1:length(pplist)
    prod=prod*pplist(i)
end

lcm=prod

if lcm >= maxval
    lcm=uint64(0);
    return
end

end