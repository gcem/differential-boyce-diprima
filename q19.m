function q19
  d1 = 1;
  d2 = .05;
  p1 = -4-sqrt(40);
  p2 = -4+sqrt(40);
  p3 = 5/2;
  
  subplot(2,3,1)
  f(p1-d1)
  subplot(2,3,4)
  f(p1+d1)
  subplot(2,3,2)
  f(p2-d1)
  subplot(2,3,5)
  f((p2+p3)/2)
  subplot(2,3,6)
  f(p3+d1)
endfunction

function f(alpha)
  A = [alpha,10; -1,-4];
  df2(A, 100)
  title(sprintf('\\alpha = %f', alpha));
  xlabel x_1
  ylabel x_2
  
  [v, r] = eig(A, 'vector');
  
  if imag(r(1)) != 0
    r1 = r(1);
    v1 = v(:,1);
    sln = @(t, c1, c2) c1 * real(exp(t*r1) .* v1) + c2 * imag(exp(t*r1) .* v1);
  else
    r1 = r(1);
    r2 = r(2);
    v1 = v(:,1);
    v2 = v(:,2);
    sln = @(t, c1, c2) c1 * exp(t*r1) .* v1 + c2 * exp(t*r2) .* v2;
  endif
  
  slns2(sln)
endfunction