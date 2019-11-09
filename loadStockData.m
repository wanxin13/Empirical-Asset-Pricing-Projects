function [dates,d,m] = loadStockData(path)

d = xlsread(path,'A7:AY186');
m = xlsread(path,'BA7:BA186');
date = num2str(d(:,1))
dates = datenum(date,'yyyymm');