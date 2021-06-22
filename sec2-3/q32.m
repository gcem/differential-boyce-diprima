clf
f32 = @(x,y) (x .* x + 3 * y .* y) ./ (2 * x .* y);
df(f32);
hold on

c = [-10:.5:-.5, .5:.5: 10]';
x = linspace(-15, 15, 1000);
s32 = sqrt(exp(c) * abs(power(x,3)) - ones(size(c)) * (x .* x));
plot(x, s32, 'r', x, -s32, 'r')

ax
hold off