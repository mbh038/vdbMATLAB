function [ n ] = palin_product( dig,lim )
%PALIN_PRODUCT Summary of this function goes here
%   Detailed explanation goes here

nums=10^dig-1:-1:10^(dig-1);

%prod=zeros(length(nums));
% for i=1:length(nums)
%     for j=1:length(nums)
%         prod(i,j)=nums(i)*nums(j);
%     end
% end


% for i=1:length(nums)
%     prod(i,:)=nums(i)*nums;
% end

produ=nums'*nums;
%produ=produ(:);
%produ=unique(produ);
produ=produ(produ<lim);
if isempty(produ)
    n=0;
    return
end
produ=sort(produ,'descend');



% for i= 1:length(produ)
%     a=num2str(produ(i));
%     if strcmp(a,a(end:-1:1)) 
%         n=produ(i);
%         return
%     end
% end

for i= 1:length(produ)
    if is_pal(produ(i))
        n=produ(i);
        return
    end
    n=0;
end

% %palins=zeros(length(produ),1);
% a=num2str(produ);
% b=flip(a,2);
% a=cellstr(a);
% a=strtrim(a);
% b=cellstr(b);
% b=strtrim(b);
% 
% index = cellfun(@strcmp, a, b);
% 
% palins=produ(index);
% % count=0;
% % for i=1:length(a)
% %     if sum(a{i}==b{i})==length(b{i})
% %         count=count+1;
% %         palins(count)=str2num(a{i});
% %     end
% % end
% 
% if lim <min(palins)
%     n=0;
% else
%     n=max(palins(palins<lim));
% end

end

% function pal=palindrome(n)
%     
%     digits=floor(log10(abs(n)+1)) + 1;
%     
%     if digits==1
%         pal=true;
%         return
%     end
%     
%     lint=floor(n/10^(digits-1));
%     rint=mod(n,10);
%     
%     if lint == rint
%         n=floor((n-lint*10^(digits-1))/10);
%         pal=palindrome(n);
%     else
%         pal=false;
%     end
% end
% 

function pal=is_pal(n) 
  if (mod(n,10) == 0) 
      pal=false;
      return
  end
  r = 0;
  while (r < n) 
    r = 10 * r + mod(n,10);
    n =floor(n/10);
  end
  pal= n == r || n == floor(r / 10);
end

    