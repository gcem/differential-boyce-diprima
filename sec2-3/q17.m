t = linspace(-10, 10, 10000);
f = @(t) (5 - sqrt(25 + 4 * (power(t,3) - exp(t) - 3))) / 2;
y = f(t);
t(imag(y) != 0) = NaN;
clf;
plot(t, y);
grid minor;
ax;
hor(1);
vert(min(t))
vert(max(t))