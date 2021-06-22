t = linspace(-20, 20);
f = @(t) -sqrt(2 * log(1 + t .* t) + 4);
clf;
plot(t, f(t));
grid minor;
ax;
hor(-2);