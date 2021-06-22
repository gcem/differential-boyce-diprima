t = linspace(-1, 5, 1000);
f = @(t) 2 ./ (1 - 2 * log(t))
clf;
plot(t, f(t), '.');
grid minor;
ax;
hor(2)
vert(1)
vert(sqrt(e))