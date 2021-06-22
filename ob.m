function ob(slope = 1)
  x = xlim;
  y = x * slope;
  h = ishold;
  hold on
  plot(x, y);
  if !h
    hold off
  endif
endfunction
