function [ lm ] = logiunpack( cv)
%LOGIUNPACK Summary of this function goes here
%   cv is cell vector
%   lm is corresponding 100 x 100 logical matrix

lm=zeros(size(cv,2));
for i=1:size(lm,1)
    for j=1:length(cv{i})
        lm(i,cv{i}(j))=1;
    end
end
lm=logical(lm);
end