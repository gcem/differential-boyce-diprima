function qe1
  f = figure;
  hold on;

  for h = [.05, .025, .01, .001]
    t = 0:h:2;
    y = zeros(size(t));
    y(1) = 1;
    for i = 1:(length(t) - 1)
      y(i + 1) = y(i) + h * (1 - t(i) + 4 * y(i));
    endfor
    plot(t, y, 'displayname',
      sprintf('h = %.3f', h));
  endfor

  t = linspace(0, 2, 1000);
  y = 1 / 4 * t - 3 / 16 + 19 / 16 * exp(4 * t);
  plot(t, y, 'r--', 'displayname', ';Actual solution;')

  legend show
  grid on
endfunction
