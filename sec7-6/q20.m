function q20
  d = .5;
  p1 = -25/8;
  p2 = -3;
  
  subplot(1,3,1)
  f(p1-d)
  subplot(1,3,2)
  f((p1+p2)/2)
  subplot(1,3,3)
  f(p2+d)
endfunction

function f(alpha)
  A = [4,alpha; 8,-6];
  df2(A)
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