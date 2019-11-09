function [b] = getAlphaBeta(stockdata,X)

b = ones(2,10)
for i = 1:10
    b(:,i) = regress( stockdata(:,i+1),X);
end