## function lvl3(f, c = -3:3, xmin = -5, xmax = 5, dif = .05, ymin = xmin, ymax = xmax)
## 
## Same as lvl, except this also draws a 3-d plot
function lvl3(f, c = -3:3, xmin = -5, xmax = 5, dif = .05, ymin = xmin, ymax = xmax)
  x = xmin:dif:xmax;
  y = ymin:dif:ymax;
  [xx, yy] = meshgrid(x, y);
  vals = f(xx, yy);
  
  subplot(2,1,1)
  contour(x, y, vals, c);
  
  subplot(2,1,2)
  mesh(x, y, vals);
  xlabel t
  ylabel y
endfunction
