t = linspace(-4, 5);
f = @(t) 1 ./ ((t - 3) .* (t + 2));
clf;
plot(t, f(t));
grid minor;
ax;
hor(-1/6);