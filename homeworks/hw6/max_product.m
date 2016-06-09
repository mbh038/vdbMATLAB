function [ product,ind ] = max_product( v,n )
%MAX_PRODUCT Summary of this function goes here
% v        vector
% n        positive integer    
%

if length(v) < n
    product=0;
    ind=-1;
    return
end

nprods=length(v)-n+1;
prodi=[]
for i=1:nprods
    producti=prod(v(i:i+n-1));
    indexi=i;
    prodi=[prodi;[producti indexi]]
end

product=max(prodi(:,1))
ind=prodi(min(find(prodi(:,1)== max(prodi(:,1)))),2)
    
end