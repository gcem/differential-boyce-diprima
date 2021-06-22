t = linspace(-2, 2, 10000);
f = @(t) power(3 / 2 * power(asin(t), 2) + 1, 1/3);
y = f(t);
t(imag(y) != 0) = NaN;
clf;
plot(t, y);
ylim([.7, 2])
xlim([-2,2])
grid minor;
ax;
hor(1);
vert(min(t))
vert(max(t))
hor(power(3 /2 * pi * pi / 4 + 1, 1/3))