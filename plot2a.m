function []=plot2a(volatility_1,volatility_2,dates,stockname)


f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
a = plot( dates, volatility_1);
hold on 
b = plot( dates,volatility_2,'r');
b.Color(4) = 0.5;
datetick('x','yyyymm');
box off; grid on;
ylabel('Stock Monthly Volatility(%)')
xlabel('Date');
title(strcat('Two different calculated Volatilities of ',stockname));
legend('Volatility using all data','Volatility using the most recent year of data')
%print(f,'-dpng','-r200','figures/1B');
%close(f);