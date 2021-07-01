function ob(slope = 1, color = '')
  x = xlim;
  y = x * slope;
  h = ishold;
  hold on
  plot(x, y, color);
  if !h
    hold off
  endif
endfunction
