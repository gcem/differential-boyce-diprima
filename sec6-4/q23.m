function q23
  t = linspace(0, 40*pi, 10000);
  y = 1 - cos(t);
  f = us(t);
  
  n = 50;
  for k = 1:n
    yn = us(t - k * 11 / 4) .* (1 - cos(t - k * 11 / 4));
    if mod(k, 2) == 0
      y += 2 * yn;
      f += 2 * us(t - k*pi);
    else
      y -= 2 * yn;
      f -= 2 * us(t - k*pi);
    endif
  endfor
  plot(t, y, t, f)
  pitics(2)
  grid on
endfunction