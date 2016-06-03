function amag = accelerate(F1,F2,m)
amag=sqrt(sum((F1+F2).^2))/m;
end