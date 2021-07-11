function q19
  clf
  f = @(t, y) y.*y - t.*t;
  df(f, .2)
  ax
  hold on
##  vals = 0.6:.05:0.7;
##  vals = 0.65:.01:0.7;
  vals = 0.67:.001:0.68;
  for a = vals
    q_euler(f, a, 0, 600, .01, [1], @(t) zeros(size(t)), 2);
  endfor
  hold off
  leg = num2str(vals');
  legend([leg(1:3, :);leg]);
endfunction
