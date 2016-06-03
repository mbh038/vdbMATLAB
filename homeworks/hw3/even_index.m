function Meven=even_index(M)
    
    [r,c]=size(M);
    
    Meven=M(2:2:r,2:2:c)
    
end