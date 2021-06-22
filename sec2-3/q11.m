t = linspace(-100, 100, 10000);
f = @(t) sqrt(-2 .* t .* exp(t) + 2 * exp(t) - 1)
clf;
plot(t, f(t));
grid minor;
ax;
hor(1);