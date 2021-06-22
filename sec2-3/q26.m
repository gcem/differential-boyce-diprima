x = linspace(0, -2);
yp = @(y, x) 2*(1 + x)*(1 + y .* y);
[y, _, _] = lsode(yp, 0, x);

plot(x, y)
ax

# maximum point found on paper
vert(-1)
hor(tan(-1))