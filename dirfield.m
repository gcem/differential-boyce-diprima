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
  quiver(xx, yy, vx ./ norm, vy ./ norm, 0.8);
  grid minor on;
  grid on;
  xlim([xmin, xmax])
  ylim([ymin, ymax])
endfunction