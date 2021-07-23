function q17d
  y = @(t, b) exp(-t/2) .* (1 + (b + 1/2) * t);
  t = linspace(0, 15, 10000);
  clf
  hold on
  for b = [1, 2, 5, 10, 50]
    yt = y(t, b);
    plot(t, yt, 'displayname', sprintf('b = %f', b))
  endfor

  grid minor
  ax
  vert(2)
  legend show
endfunction
