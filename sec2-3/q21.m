f = @(y, t) (1 + 3 * t * t) / (3 * y .* y - 6 * y);
t = linspace(0, 10);
[y, istate, msg] = lsode(f, 1, t, [-1, .999]);
plot(t, y)
ax