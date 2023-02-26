% Surface
subplot(2, 1, 1);
x = linspace(-10, 10);
y = linspace(-10, 10);
[X, Y] = meshgrid(x, y);
z = (X.^2) / 4 + (Y.^2) / 9;
surf(x, y, z);
title('Surface');
xlabel('x');
ylabel('y');
zlabel('z');

% Both plots
subplot(2, 1, 2);
y_1 = ((x.^2) + x)./((x.^2) - 3 * x + 2);
y_2 = 2 - 2 * sin(x);
p = plot(x, y_1, 'r', x, y_2, 'g--');
p(1).LineWidth = 1.5;
p(2).LineWidth = 2;
title('Plot');
xlabel('x');
ylabel('y');