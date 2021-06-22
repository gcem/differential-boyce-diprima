t = linspace(.5, 2.5, 10000);
f = @(t) (pi - asin(3/2*(cos(2*t) + 1))) / 3;
y = f(t);
t(imag(y) != 0) = NaN;
clf;
plot(t, y);
xlim([-1, 4])
ylim([-1, 2])
grid minor;
ax;
vert(pi / 2);
hor(pi / 3);
vert(min(t))
vert(max(t))