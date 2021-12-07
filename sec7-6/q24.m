# copy of q23
function q24
  A = diag([-1/4, -1/4, 1/10]);
  A(2,1) = -1;
  A(1,2) = 1;
  [v, r] = eig(A)
  
  # v * c = initialPt
  # must be satisfied by the coefficient vector c.
  initialPt = [1,2,4]';
  vInv = inverse(v);
  c = vInv * initialPt;
  
  v1 = v(:,1);
  v2 = v(:,2);
  v3 = v(:,3);
  r = diag(r);
  
  t = linspace(-20, 5, 2000);
  x = ...
    c(1) * v1 * exp(t*r(1)) + ...
    c(2) * v2 * exp(t*r(2)) + ...
    c(3) * v3 * exp(t*r(3));
  
  # plot the solution
  plot3(x(1,:), x(2,:), x(3,:), 'linewidth', 2);
  xlabel x_1
  ylabel x_2
  zlabel x_3
  grid on
  
  # plot the initial point
  hold on
  plot3(initialPt(1), initialPt(2), initialPt(3), 'ko', 'linewidth', 5);

  df3(A, 20, 10)
  ax3
endfunction