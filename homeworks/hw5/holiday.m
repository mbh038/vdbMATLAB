function [ isholiday ] = holiday( month,day )
%HOLIDAY Summary of this function goes here
%    holidays: January 1st, July 4th, December 25th, and December 31st. 

holidays=[[1 1];[7 4];[12 25];[12 31]]

isholiday=false
switch month
    case 1
        if day == 1
            isholiday=true;
            return
        end
    case 7
        if day == 4
            isholiday=true;
            return
        end
    case 12
        if day == 25 || day == 31
            isholiday=true;
            return
        end
end

end