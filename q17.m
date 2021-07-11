function q17
  f = @(t, y) (y .* y + 2 * t .* y) ./ (3 + t .* t);
  euler(f, 2, 1, 20, .1, [1, 2, 4, 10], @(t) zeros(size(t)), 2);
  hold on
  vert(2.5)
##  df(f, 0.15, 0, 20)
##  xlim([0,5])
  hold off
endfunction
