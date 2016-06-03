function psum=peri_sum(A)
    firstrow=sum(A(1,:));
    lastrow=sum(A(end,:));
    sides=sum(A(2:end-1,1)+A(2:end-1,end));
    psum=firstrow+lastrow+sides;
end