clear

% row major 
tic
N = 3000;
for ii = 1:N
for jj = 1:N
A(ii,jj) = ii*jj;
end
end
toc

clear

% column major 
tic
N = 3000;
for jj = 1:N
for ii = 1:N
A(ii,jj) = ii*jj;
end
end
toc

clear

% pre-allocation

tic
N = 3000;
A=zeros(N);
for ii = 1:N
for jj = 1:N
A(ii,jj) = ii*jj;
end
end
toc

clear

% pre-allocation and column major looping

tic
N = 3000;
A=zeros(N);
for jj = 1:N
for ii = 1:N
A(ii,jj) = ii*jj;
end
end
toc

clear
