function [ validIntType ] = integerize( A )
%INTEGERIZE Summary of this function goes here
%   input
%   A matrix of type double 

%   output
%   returns the name of the “smallest” signed integer class to which A can be converted without loss of information

% first version used cells

% ints={'int8' 'int16' 'int32' 'int64'};
% intmins=cellfun(@intmin,ints(1:4),'UniformOutput', false);
% intmaxs=cellfun(@intmax,ints(1:4),'UniformOutput', false);
% 
% minA=min(A(:));
% maxA=max(A(:));
% 
% flag=false
% for i=1:length(ints)
%     if minA >= intmins{i} && maxA <= intmaxs{i}
%         flag=true
%         validIntType=ints{i};
%         break
%     end
% end
% 
% if flag==false
%     validIntType='NONE';
% end
% 
% end

% second version does not use cells.

intvals=[ 8 16 32 64];

minA=min(A(:));
maxA=max(A(:));

flag=false;
for i=1:length(intvals)
    intType=strcat('int',int2str(2^(i+2)));
    if minA >= intmin(intType) && maxA <= intmax(intType)
        flag=true;
        validIntType=intType;
        break
    end
end

if flag==false
    validIntType='NONE';
end

end
