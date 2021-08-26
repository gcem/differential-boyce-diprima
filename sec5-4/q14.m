function q14
  x = [linspace(0, .1, 10000)(2:end), linspace(.1, 2, 1000)];
  y = 1 ./ sqrt(x) .* (2 * cos(2*log(x)) - 1 * sin(2*log(x)));
  
  plot(x, y, [.5, 1.5], [2 + 3/2, 2 - 3/2]);
  ylim([-50 50])
endfunction