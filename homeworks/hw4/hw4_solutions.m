%% Problem intquad.m:

function Q = intquad(n,m)
    Q = zeros(n,m);
    Q = [Q Q+1; Q+2 Q+3];
end

%% Problem sindeg:

function [s avg] = sindeg(d)
    s = sin(d*pi/180);
    avg = mean(s(:));
end

%% Problem simple_stats.m:

function S = simple_stats(N)
    S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];
end
% or

function S = simple_stats(N)
    S = [mean(N'); median(N'); min(N'); max(N')]';
end
% However, this one does not work correctly for column vectors.


%% Problem odd_rms.m:

function or = odd_rms(nn)
    or = sqrt(mean((1:2:2*nn).^2));
end

%% Problem fence.m:

function [nums , nump] = fence(lng,seg)
    nums = ceil(lng/seg);
    nump = nums+1;
end

%% Problem zero_stat.m:

function pct = zero_stat(A)
    pct = 100 * (numel(A) - sum(A(:))) / numel(A);
end

%% Problem reverse_diag.m:

function D = reverse_diag(n)
    D = zeros(n);
    D(n:max([1,n-1]):max([n,n^2-1])) = 1;
end
% or

function D = reverse_diag(n)
    D = zeros(n);
    D(1:n+1:end) = 1;
    D = flip(D);
end

%% Problem sum3and5muls:


function s = sum3and5muls(n)
    tic
    s = sum(3:3:n) + sum(5:5:n) - sum(15:15:n);
    toc
end
