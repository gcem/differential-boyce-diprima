# this is not perfect - there is a problem with small numbers (when y / x - 1 is close to 0)
close

f33s = @(x,y) ((y ./ x) - 1) * 100000 ./ power(y ./ x + 3, 5) ./ power(x, 4);
lvl3(f33s, 1: 4: 100);
ax

figure
f33 = @(x, y) (4 * y - 3 * x) ./ (2 * x - y);
df(f33)
ax