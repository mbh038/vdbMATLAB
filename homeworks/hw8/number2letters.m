function [ nletters ] = number2letters( n )
%NUMBER2LETTERS Summary of this function goes here
%   n: a positive integer, less than one thousand
%   nletters: the number of letters required to write this down

%check that n is a positive integer scalar less than 1000
if ~isscalar(n) || n < 1 || n>=1000 || n ~= floor(n)
    fprintf('Invalid input. Must be a positive integer scalar less than 1000');
    return
end

units={'one','two','three','four','five','six','seven','eight','nine'};
teens={'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
tens={'ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'};

nd=length(num2str(n))

d=zeros(1,nd);
number=n;
for j=1:nd
    d(j)=mod(number,10);
    number=floor(number/10);
    %fprintf('d%d:%d, ',j,d(j));
end   
%d=flip(d);

nletters=0;
% units

d
if size(d,2)== 1
    nletters=length(units{d(1)});
end
if size(d,2) >1
    n2=10*d(2)+d(1);
    if n2>0
        if mod(n2,10)==0
            nletters=length(tens{d(2)});
           
        end
        if n2 < 10
            nletters=length(units{d(1)});
        end
        if n2 > 10 && n2 < 20 && mod(n2,10)~=0
            nletters=length(teens{d(1)});
            
        end
        if n2 > 20 && mod(n2,10)~=0
            nletters=length(tens{d(2)})+length(units{d(1)});
            
        end
    end
end

if size(d,2) ==3
    if mod(n,100)==0
        nletters=length(units{d(3)})+7; 
        return
    end
    nletters=nletters+length(units{d(3)})+7;
end

end

function nd= ndigits(A)
% find how many digits are in a number
    nd=floor(log10(abs(A)+1)) + 1;
end