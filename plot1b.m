function []=plot1b(N, Percentage)

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
plot( N, Percentage*100, '-o');
box off; grid on;
ylabel('Individual Security Variances/Porfolio Variances(%)')
xlabel('Number of stocks in portfolio');
title(strcat('Decomposition of Portfolio Variances'));
%close(f);