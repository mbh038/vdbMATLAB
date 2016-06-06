function  tf=eligible( v,q )
    %ELIGIBLE Summary of this function goes here
    %   Detailed explanation goes here
    
    ave=mean([v;q]);
    
    if ave >= 92 && v > 88 && q > 88
        tf= true;       
    else
        tf= false;       
    end
end