function [beta] = getBeta(s,m,n)

for i = 1:n
    beta_1(i,1) = fitlm(s(1:i,1),m(1:i,:));
end

