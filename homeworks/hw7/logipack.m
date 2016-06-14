function [ cv ] = logipack( lm )
%LOGIPACK Summary of this function goes here
%   Detailed explanation goes here

cv=cell(size(lm,1),1);
for i=1:size(lm,1)
    for j=1:size(lm,2)
        if lm(i,j)
            cv{i}=[cv{i},j];
        end
    end
end

end