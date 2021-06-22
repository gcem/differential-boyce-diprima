close
f30l = @(x, y) power(y, 4) - 16 * power(x, 4) + 4 * x .* power(y,3) - 16 * power(x, 3) .* y;
lvl(f30l, [-300:10:300, -10000:100:10000], -15, 15)
ax

figure
f30 = @(x, y) (y - 4 * x) ./ (x - y);
df(f30);
ax