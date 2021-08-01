function r = q36
  r = roots([1 6 17 22 14]);
  syms t c1 c2 c3 c4;
  y(t) = exp(-t) * (c1 * cos(t) + c2 * sin(t)) + exp(-2*t) * (c3 * cos(sqrt(sym(3))*t) + c4 * sin(sqrt(sym(3))*t));
  c = solve([t y diff(y, t) diff(y, t, t) diff(y, t, t, t)] == [0 1 -2 0 3]);
  for [val key] = c
    printf('\n%s =\n', key);
    disp(val)
  endfor
  
  cn = double([c.c1 c.c2 c.c3 c.c4]);
  y = @(t) exp(-t) .* (cn(1) * cos(t) + cn(2) * sin(t)) + ...
    exp(-2*t) .* (cn(3) * cos(sqrt(3)*t) + cn(4) * sin(sqrt(3)*t));
  t = linspace(0, 10);
  plot(t, y(t));
  ax
  grid on
endfunction
