x = linspace(-pi, pi, 12);
n = -0.1 + 0.2 * rand(1,12);
y = cos(2.*x) + n; 
fig = figure;
plot(x,y);
title('plot with random noise');
saveas(fig, "task7_hw1.png");