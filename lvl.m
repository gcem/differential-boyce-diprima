## function lvl(f, c = -3:3, xmin = -5, xmax = 5, dif = .05, ymin = xmin, ymax = xmax)
## 
## f: (t, y) -> c
##
## Plots the level curves of f. Curves for given c values are drawn.
function lvl(f, c = -3:3, xmin = -5, xmax = 5, dif = .05, ymin = xmin, ymax = xmax)
  x = xmin:dif:xmax;
  y = ymin:dif:ymax;
  [xx, yy] = meshgrid(x, y);
  vals = f(xx, yy);
  
  close
  contour(x, y, vals, c);
endfunction
