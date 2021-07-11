function q16
  f = @(t, y) t .* t + y .* y;
  q_euler(f, 1, 0, 10, .1, [1, 2, 4, 10], @(t) zeros(size(t)), 2);
  hold on
  vert(.8)
  df(f, 0.15, 0, 20)
  xlim([0,5])
  hold off
endfunction
