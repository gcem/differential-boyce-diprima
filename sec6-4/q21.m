function q21
  t = linspace(0, 30*pi, 1000);
  y = 1 - cos(t);
  f = us(t);
  
  n = 15;
  for k = 1:n
    yn = us(t - k*pi) .* (1 - cos(t - k * pi));
    if mod(k, 2) == 0
      y +=  yn;
      f += us(t - k*pi);
    else
      y -= yn;
      f -= us(t - k*pi);
    endif
  endfor
  plot(t, y, t, f)
  pitics(2)
  ylim([-35, 35])
  grid on
  hold on
  plot([pi, pi + 15 * 2*pi], [2, 2 + 15*2], 'color', 'magenta')
  hold off
endfunction