function [ op ] = dial( input_string )
%DIAL Summary of this function goes here
%   Detailed explanation goes here

%2 ABC, 3 DEF, 4 GHI, 5 JKL, 6 MNO, 7 PQRS, 8 TUV, 9 WXYZ
keys={'ABC','DEF', 'GHI', 'JKL', 'MNO', 'PQRS', 'TUV', 'WXYZ'};
digits='0123456789';

op='';
for i=1:length(input_string)
    legal=0;
    for j=1:length(keys)
        for k=1:length(keys{j})
            if strcmp(input_string(i),keys{j}(k))
                op=[op,num2str(j+1)];
                legal=1;
                continue
            end
         end 
    end
    for j=1:10
        if strcmp(input_string(i),digits(j))
            op=[op,digits(j)];
            legal=1;
            continue
        end
    end
    if legal==0
        op='0';
        break
    end
end

op=str2num(op)
op=uint64(op)
end