function [ day_diff ] = day_diff(month1, day1, month2,day2)
%DAY_DIFF Summary of this function goes here
%   Detailed explanation goes here

inputs=[month1, day1, month2,day2]
days=[31,28,31,30,31,30,31,31,30,31,30,31];

% check for scalar inputs
if length(inputs)>4
    day_diff= -1
    return
end

% check for integer inputs
if isequal(inputs,fix(inputs))==0
    day_diff= -1;
    return    
end

% check for valid month values
if month1 <1 || month2 <1 || month1 > 12 || month2 > 12
    day_diff= -1;
    return
end

% check for valid day values
if day1 < 1 || day2 < 1 || day1 > days(month1) || day2 > days(month2)
    day_diff = -1;
    return
end

if month1==month2
        day_diff=abs(day2-day1);
        return
% if the second birthday comes before the first one, swap the order
elseif month1>month2
        temp = day1;
        day1=day2;
        day2=temp;
        temp = month1;
        month1=month2;
        month2=temp ;
end
day_diff= days(month1)-day1 + day2 + sum(days(month1+1:1:month2-1)); 
end

