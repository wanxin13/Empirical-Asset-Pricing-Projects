function []=plot1a(N, Sigma)

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot( N, Sigma, '-o');
box off; grid on;
ylabel('Portfolio Volatility')
xlabel('Number of stocks in portfolio');
title(strcat('Volatility of Different portfolios'));
%close(f);