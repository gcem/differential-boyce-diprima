function qe2
  A = [1 1; 4 1];
  lims = [-3, 3];
  x = linspace(lims(1), lims(2), 40);
  [x1, x2] = meshgrid(x);
  dx1 = A(1,1) * x1 + A(1,2) * x2;
  dx2 = A(2,1) * x1 + A(2,2) * x2;
  
  norm = sqrt(dx1.*dx1 + dx2.*dx2);
  
  quiver(x1, x2, dx1 ./ norm, dx2 ./ norm, 0.6);
  
  axis equal
  xlim(lims);
  ylim(lims);
  
  ax
endfunction