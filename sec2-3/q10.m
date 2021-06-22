t = linspace(-4, 5);
f = @(t) -sqrt(2 * (t - t .* t + 2));
clf;
plot(t, f(t));
grid minor;
ax;
hor(-2);  