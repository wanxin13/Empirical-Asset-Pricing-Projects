function []=plot2b(b1,bint1,b2,bint2,dates,n,stockname)

for i= 1:n-11
    bint11(i,1) = bint1(2,1,i);
end
for i= 1:n-11
    bint12(i,1) = bint1(2,2,i);
end
for i= 1:n-11
    bint21(i,1) = bint2(2,1,i);
end
for i= 1:n-11
    bint22(i,1) = bint2(2,2,i);
    dates1(i,1) = dates(i+11,1);
end

f = figure;
set(f,'units','normalized','outerposition',[0 0 1 1]);
a = plot( dates1, b1(2,:),'b');
hold on 
b = plot( dates1, bint11,'b');
hold on 
c = plot( dates1, bint12,'b');
hold on 

d = plot( dates1, b2(2,:),'r');
hold on 
e = plot( dates1, bint21,'r');
hold on 
f = plot( dates1, bint22,'r');

d.Color(4) = 0.5;
e.Color(4) = 0.5;
f.Color(4) = 0.5;
datetick('x','yyyymm');
box off; grid on;
ylabel('OLS beta')
xlabel('Date');
title(strcat('Two different estimated OLS Betas and 95% Confidence Intervals of ',stockname));
legend('OLS beta using all data','Lower bound of beta using all data','Upper bound of beta using all data','OLS beta using the most recent year of data','Lower bound of beta using the most recent year of data','Upper bound of beta using the most recent year of data')
%print(f,'-dpng','-r200','figures/1B');
%close(f);