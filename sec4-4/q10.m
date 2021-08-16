function q10
  t = linspace(0, 30)
  y = @(t) -1/8*t.*t.*sin(t) + 2*cos(t) + 7/8*sin(t) - 7/8*t.*cos(t) + 1/2*t.*sin(t);
  
  plot(t, y(t))
endfunction
