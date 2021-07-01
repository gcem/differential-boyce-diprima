# function dirfield(f, dif, ymin, ymax)
#
# f is a function of two variables that operates
# element-wise on its input matrices. it should
# output the change rate of the dependent variable
# (second argument)
function dirfield(f, dif, ymin, ymax)
  xmax = (ymax - ymin) / 2;
  xmin = -xmax;
  [xx, yy] = meshgrid(xmin:dif:xmax, ymin:dif:ymax);
  vx = ones(size(xx));
  vy = f(xx, yy);
  norm = sqrt(vx .* vx + vy .* vy);
  vx = vx ./ norm * (dif / 2 * 1);
  vy = vy ./ norm * (dif / 2 * 1);
##  quiver(xx, yy, vx ./ norm, vy ./ norm, 0.8);
  
  startx = xx - vx;
  endx = xx + vx;
  starty = yy - vy;
  endy = yy + vy;
  
  n = numel(startx);
  # this way (drawing separate lines) is very slow
  # so I put NaNs in between and draw a 'single' row
##  x = [startx(:)'; endx(:)'];
##  y = [starty(:)'; endy(:)'];
  x = [startx(:)'; endx(:)'; NaN(1,n)](:);
  y = [starty(:)'; endy(:)'; NaN(1,n)](:);
  plot(x, y, 'b')
  
  grid minor on;
  grid on;
  xlim([xmin, xmax])
  ylim([ymin, ymax])
endfunction