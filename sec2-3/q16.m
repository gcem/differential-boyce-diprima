t = linspace(-5, 5);
f = @(t) -1 / sqrt(2) * (t .* t + 1);
clf;
plot(t, f(t));
grid minor;
ax;
hor(-1/sqrt(2));