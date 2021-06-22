clf
f31 = @(x,y) (x .* x + x .* y + y .* y) ./ (x .* x);
df(f31);
ax

hold on
f31s = @(x, c) x .* tan(c + log(abs(x)));
slns(f31s)

hold off