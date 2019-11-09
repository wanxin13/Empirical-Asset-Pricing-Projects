function [average,sigma] = getReturnofEqualWeight(stockdata,n)
% n shows the number of stocks used
r_p = zeros(180,1)
for i = 1:180
    r_p(i,1) = nanmean(stockdata(i,2:n+1));
end
average = nanmean(r_p);
sigma = nanstd(r_p);