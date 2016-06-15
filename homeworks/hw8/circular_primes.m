function [ ncp ] = circular_primes( n )
%CIRCULAR_PRIMES Summary of this function goes herebn
%   How many circular primes are there less than a number n?

% n positive integer
% ncp number of circular primes less than n

ncp=0;
circularprimes=[];

% find all primes less than n
prime=primes(n-1);

np=length(prime);

% redundant code to reverse digits of each prime.
% for i=1:np
%     r=0;
%     n=prime(i);
%     while ndigits(r)<=ndigits(prime(i))
%         r = 10 * r + mod(n,10);
%         n =floor(n/10);
%     end
%     if ndigits(r)>ndigits(prime(i))
%         r=r/10;
%     end
%     %fprintf('Prime: %d, r: %d\n',prime(i),r)    
% end


% for each prime, find out if it is circular
for i=1:np
    % find all the digits in the prime
    n=prime(i);
    %fprintf('Prime: %d  ',n);
    for j=1:ndigits(prime(i))
        d(j)=mod(n,10);
        n=floor(n/10);
        %fprintf('d%d:%d, ',j,d(j));
    end
    
    % compile all circular permutations of the prime
    %fprintf('\n');
    flag=true;
    for k=1:length(d)
        %result=shift(d,1);
        result=circshift(d,[1,1]);
        d=result;
        number=0;
        for kk=1:length(d)
            number=number+10^(kk-1) * d(kk);
        end
        number;
        
        % for each permutation, is it prime?
        if ~isprime(number)
            flag=false;
        end
    end
    % if all permutations are prime, the prime is circular
    if flag==true
        ncp=ncp+1;
        circularprimes=[circularprimes,prime(i)];
    end
    
end
circularprimes;
end


function result=shift(nelements, k)      
% function to shift elements of an array forward in a circular way by k elements 
% redundant - does same as MATLAB function circshift

    len = size(nelements,2);
    result = zeros(1,len);
    start = mod((len - k),len);
    for i =1:len
        index=mod(start + i+1 , len)+1;
        result(i)=nelements(index);
     end
end


function nd= ndigits(A)
% find how many digits are in a number
    nd=floor(log10(abs(A)+1)) + 1;
end
