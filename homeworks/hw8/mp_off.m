function B = mp_off(A,n)

% After checking that we do not have to return an empty array, we initialize a row vector
% for remembering a product, home row and column, and one of four direction codes.
% Home is a location in the matrix from which we can move in one of the directions
% (1=East, 2=South, 3=SouthEast, 4=SouthWest). For each direction, home is systematically 
% moved to everywhere it legally can be the start of n values. For each location, we 
% potentially update the L vector with the largest product so far, the home location and
% direction that corresponded to that product. After scanning in all four directions, we 
% use L to reconstruct the required indices based on the last updated home and direction. 

  [r,c] = size(A);
  if n>r && n>c
    B = [];                                  % cannot be solved
    return
  end

  L = zeros(1,4);                            % [product, home-row, home-col, direction]
  
  function check(V,d)
      p = prod(V);
      if p>L(1)                                % if new product larger than any previous
        L = [p,d];                             % then update product, home and direction 
      end  
  end

  for i=1:r                            
    for j=1:c-n+1
      check(A(i,j:j+n-1),[i,j,1]);           % row, right case
    end
  end 
  for i=1:r-n+1                        
    for j=1:c
      check(A(i:i+n-1,j),[i,j,2]);           % column, down case
    end
  end
  for i=1:r-n+1
    for j=1:c-n+1
      S=A(i:i+n-1,j:j+n-1);
      check(diag(S),[i,j,3]);                % diagonal, down case
      check(diag(flip(S,2)),[i,j,4]);        % reverse diagonal, down case
    end
  end
  i=L(2); j=L(3);                            % reconstruct coordinates
  switch L(4)                                  
    case 1, B = [ones(n,1)*i,(j:j+n-1)'];      
    case 2, B = [(i:i+n-1)',ones(n,1)*j];
    case 3, B = [(i:i+n-1)',(j:j+n-1)'];
    case 4, B = [(i:i+n-1)',(j+n-1:-1:j)'];
  end
end

% function check(V,d,L)
%   p = prod(V);
%   if p>L(1)                                % if new product larger than any previous
%     L = [p,d];                             % then update product, home and direction 
%   end  
% end
