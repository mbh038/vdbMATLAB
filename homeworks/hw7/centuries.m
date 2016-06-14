function [ cent ] = centuries( year )
%CENTURIES Summary of this function goes here
%   Detailed explanation goes here

if isscalar(year)==false
    cent='';
    return
end
if year<1 || year > 3000 || fix(year)~=year
    cent='';
    return
end

roman={'I','II','III','IV','V','VI','VII','VIII','IX','X'}
prefix={'','X','XX'}

cent=floor((year-1)/100)+1

millenium=floor((year-1)/1000)+1

cent=strcat(prefix{millenium},roman{cent-(millenium-1)*10})

end