function q15
  f = @(t,y) 3 * t .* t ./ (3 * y .* y - 4);
  euler(f, 0, 1, 4, .2, [2, 4], @(t) zeros(size(t)), 3) # 2 for part a, 4 for part b
  xl = xlim;
  yl = ylim;
  hold on
  df(f, .1, -4, 6)
  xlim(yl / 2)
  ylim(yl)
  ax
  hold off
endfunction
