function [ op ] = exp_average( inn,b )
%EXP_AVERAGE Summary of this function goes here
%   Detailed explanation goes here
    
persistent outn;
persistent bn;

switch nargin
    case 1              
        if isempty (bn)
            b=0.1;
        else
            b=bn;            
        end
        if isempty (outn)
            outn = inn;
        else
            outn = b * inn + (1 - b) * outn;
        end
    case 2
        bn=b;
        outn = inn;
    end
   op=outn;
end