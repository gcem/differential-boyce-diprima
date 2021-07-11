function q18
  clf
  f = @(t, y) -t .* y + .1 * y .* y .* y;
  df(f, .2)
  ax
  hold on
##  vals = 2.3:0.01:2.5;
  vals = 2.37:0.001:2.38;
  for a = vals
    euler(f, a, 0, 600, .01, [1], @(t) zeros(size(t)), 2, 0);
  endfor
  hold off
  leg = num2str(vals');
  legend([leg(1:3, :);leg]);
endfunction
