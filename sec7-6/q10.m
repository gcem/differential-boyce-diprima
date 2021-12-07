function q10
  A = [-3 2; -1 -1];
##  df2(A, 1000); % to see the rotation
  df2(A);
  t = linspace(-5, 3, 1000);
  x1 = exp(-2*t) .* (cos(t) - 5*sin(t));
  x2 = exp(-2*t) .* (-2*cos(t) - 3*sin(t));
  hold on
  plot(x1, x2, 'displayname', 'Solution', 'linewidth', 2);
  plot(1, -2, 'or;Initial point;', 'linewidth', 2);
  ax
endfunction