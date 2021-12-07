function q16
  subplot(2,2,1)
  d = .1;
  p1 = 0;
  p2 = 25 / 12;
  
  subplot(2,2,1)
  f(p1-d)
  ax
  subplot(2,2,3)
  f(p1+d)
  ax
  
  subplot(2,2,2)
  f(p2-d)
  ax
  subplot(2,2,4)
  f(p2+d)
  ax
endfunction

function f(alpha)
  A = [5/4, 3/4; alpha, 5/4];
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
  
  slns2(sln, -20:4:20, -200:40:200, -20, 20)
endfunction