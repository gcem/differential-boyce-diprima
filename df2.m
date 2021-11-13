%% Plots a direction field for the solutions of the system
%% x' = Ax.
%%
%% First component of the solution (x_1) is shown on the horizontal axis.
%%
%% Draws the direction field in [-range,range] on both axes. Draws n arrows
%% on both directions.

function df2(A, range = 3, n = 40)
  lims = [-range, range];
  x = linspace(lims(1), lims(2), n);
  [x1, x2] = meshgrid(x);
  dx1 = A(1,1) * x1 + A(1,2) * x2;
  dx2 = A(2,1) * x1 + A(2,2) * x2;
  
  norm = sqrt(dx1.*dx1 + dx2.*dx2);
  
  quiver(x1, x2, dx1 ./ norm, dx2 ./ norm, 0.6);
  
  axis equal
  xlim(lims);
  ylim(lims);
endfunction