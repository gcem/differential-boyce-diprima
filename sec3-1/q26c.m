function q26c
  ymax = @(b) (6+b) .* power(2*(6+b)./(3*(4+b)), 2) - (4+b) .* power(2*(6+b)./(3*(4+b)), 3)
  
  b = linspace(0, 30);
  plot(b, ymax(b))
  grid minor
  
  bmin = fsolve(@(b) ymax(b)-4, 10);
  vert(bmin)
  hor(ymax(bmin))
  legend show
endfunction
