function q16
  x = [linspace(0, .1, 10000)(2:end), linspace(.1, 2, 1000)];
  y = 1 ./ x .* cos(2 * log(x));
  
  plot(x, y, [.5 1.5], [1 + .5, 1 - .5]);
  ylim([-80 80])
endfunction