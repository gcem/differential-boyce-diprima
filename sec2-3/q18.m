t = linspace(-3, 3, 10000);
f = @(t) (-3 + sqrt(9 - 8 * (exp(t) + exp(-t) - 7))) / 4;
y = f(t);
t(imag(y) != 0) = NaN;
clf;
plot(t, y);
grid minor;
ax;
hor(1);
vert(min(t))
vert(max(t))