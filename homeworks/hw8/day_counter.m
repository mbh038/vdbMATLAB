function [ foms ] = day_counter( year )
% DAY_COUNTER returns the number of Mondays that fell on the first day of the
% month in a given year between 1776 and 2016
%   

% year is from 1776 to 2016 inclusive; a positive integer scalar

% test for valid input
if ~isscalar(year) || year < 1776 || year > 2016 || year ~= floor(year)
    fprintf('Invalid input. Enter an integer between 1776 and 2016 inclusive')
    return
end

foms=sum(weekday(datetime(year,1:12,1))==2)


end