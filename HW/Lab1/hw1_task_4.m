x = linspace(-pi, pi, 12);
y = cos(2.*x);
fig = figure;
plot(x,y);
title("dataset D");
saveas(fig, "task4_hw1.png");