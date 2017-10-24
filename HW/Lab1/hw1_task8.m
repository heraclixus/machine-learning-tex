domain = linspace(-3,3,12); 
x = linspace(-pi, pi, 12);
t1 = cos(2 .* x); 
n = -0.1 + 0.2 * rand(12,1);
t2 = cos(2.*x) + transpose(n); 
%case  
for n = 1:11 
  w = hw1_task5(x,t2,n);
  Z = ones(12,n+1);
  for i = 2: (n+1)   %modify column vectors  
    Z(:,i)= x.^(i-1); 
  end 
  % dimension check:
  % w' of 1 by (M+1)
  % Z' of (M+1) by N  
  y = (transpose(w)* transpose(Z) );
  %plot
  fig = figure; 
  plot(domain, t1, 'color', 'b'); 
  hold on;
  plot(domain, t2, 'color', 'g'); 
  plot(domain, y, 'color', 'r');
  title(sprintf('plot for the case with n = %d',n));
  legend('function f', 'function with noise', 'regression model');
  saveas(fig, sprintf("hw1_task8_fig%d.png",n));
end 