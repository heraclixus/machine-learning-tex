domain = linspace(-3,3,12); 
x = linspace(-pi, pi, 12);
t = cos(2.*x); 
%case  
for n = 1:11 
  w = hw1_task5(x,t,n)
  Z = ones(12,n+1);
  for i = 2: (n+1)   %modify column vectors  
    Z(:,i)= x.^(i-1); 
  end 
  % dimension check:
  % w' of 1 by (M+1)
  % Z' of (M+1) by N  
  y = (transpose(w)* transpose(Z) )
  %plot
  fig = figure; 
  plot(domain, t, 'color', 'b');  
  hold on;
  plot(domain, y, 'color', 'r');
  title(sprintf('plot for the case with n = %d',n));
  legend('actual value', 'regression model');
  saveas(fig, sprintf("hw1_task6_fig%d.png",n))
end 