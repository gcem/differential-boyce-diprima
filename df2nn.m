%% df2 without normalization
function df2nn(A, range = 3, n = 40)
  lims = [-range, range];
  x = linspace(lims(1), lims(2), n);
  [x1, x2] = meshgrid(x);
  dx1 = A(1,1) * x1 + A(1,2) * x2;
  dx2 = A(2,1) * x1 + A(2,2) * x2;

  quiver(x1, x2, dx1, dx2, 0.6);

  axis equal
  xlim(lims);
  ylim(lims);
endfunction
