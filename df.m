# f is a function of two variables that operates
# element-wise on its input matrices. it should
# output the change rate of the dependent variable
# (second argument)
function df(f, dif = 0.5, ymin = -15, ymax = 15)
  dirfield(f, dif, ymin, ymax);
##  dif = 0.5;
##  [xx, yy] = meshgrid(-5:dif:5, -5:dif:5);
##  vx = ones(size(xx));
##  vy = f(xx, yy);
##  norm = sqrt(vx .* vx + vy .* vy);
##  quiver(xx, yy, vx ./ norm, vy ./ norm, 0.8);
##  grid minor on;
##  grid on;
endfunction