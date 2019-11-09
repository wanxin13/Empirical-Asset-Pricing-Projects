function [variance] = getVariances(stockdata,n)

variance = zeros(1,50);
variance = nanvar(stockdata(:,2:51));
variance = sum(variance(1,1:n))/(n^2);
