function [ fare ] = fare( distance,age )
    %FARE Summary of this function goes here
    %   Detailed explanation goes here
    
    if distance < 1
        fare =2.0;
    elseif distance >= 1 && distance < 10
        fare = 2+ (round(distance)-1)*0.25;
    elseif distance >=10
        fare = 2+9*.25+(round(distance)-10)*0.1;
    end            
    if age <= 18 || age >= 60;
        fare = fare * 0.8;
    end
end