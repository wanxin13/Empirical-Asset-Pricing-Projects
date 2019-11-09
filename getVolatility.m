function [sigma_1,sigma_2] = getVolatility(x,n)

for i = 12:n
    sigma_1(i,1) = std(x(1:i,1));
end

for i = 1:11
    sigma_1(i,1) = NaN;
    sigma_2(i,1) = NaN;
end

for i = 12:n
    sigma_2(i,1) = std(x(i-11:i,1));
end