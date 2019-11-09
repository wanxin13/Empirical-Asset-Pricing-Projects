function [b1,bint1,b2,bint2] = getTwoBeta(stockdata,X,n)

b1 = ones(2,n-11);
bint1 = ones(2,2,n-11);
for i = 12:n
    [b1(:,i-11),bint1(:,:,i-11)] = regress(stockdata(1:i,2),X(1:i,:));
end

b2 = ones(2,n-11);
bint2 = ones(2,2,n-11);

for i = 12:n
    [b2(:,i-11),bint2(:,:,i-11)] = regress(stockdata(i-11:i,2),X(i-11:i,:));
end    