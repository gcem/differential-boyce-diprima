x = linspace(0, 1.5);
yp = @(y, x) (2* cos(2*x))/(3 + 2*y);
[y, _, _] = lsode(yp, 0, x);

plot(x, y)
ax

# maximum point found on paper
vert(pi / 4)