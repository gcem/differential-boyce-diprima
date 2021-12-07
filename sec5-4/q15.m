function q15
  x = [linspace(0, -.1, 10000)(2:end), linspace(-.1, -2, 1000)];
  y = x.*x.*(2 - 7*log(-x));
  
  plot(x, y, [-1.5, -.5], [2 - 3/2, 2 + 3/2]);
  ylim([-50 50])
endfunction