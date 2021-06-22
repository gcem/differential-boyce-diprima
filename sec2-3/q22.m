# solved on paper
xlo = cbrt(1 - 16/9 * sqrt(3));
xhi = cbrt(1 + 16/9*sqrt(3));

x = linspace(-2, 4, 2000);
y = linspace(-3, 3, 1000);

[xx, yy] = meshgrid(x, y);
vals = yy .* yy .* yy - 4 * yy - xx .* xx .* xx + 1;

close
close
contour(x, y, vals, [0, 0])

ax
vert(1)

hold on
plot([0, 2], [3/4, -3/4])
hold off

vert(xlo)
vert(xhi)
grid minor

# solved numerically
clear x y xx yy

x = [linspace(1, 1.55)];
x2 = linspace(1, -1.2);
yp = @(y, x) 3 * x * x / (3 * y .* y - 4);
[y, _, _] = lsode(yp, 0, x);
[y2, _, _] = lsode(yp, 0, x2);

hold on
plot(x, y, 'm--', 'linewidth', 4)
plot(x2, y2, 'm--', 'linewidth', 4)