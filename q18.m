function q18
  subplot(2,2,1)
  
  subplot(1,3,1)
  f(1.8)
  ax
  subplot(1,3,2)
  f(2.02)
  ax
  
  subplot(1,3,3)
  f(2.2)
  ax
endfunction

function f(alpha)
  A = [3, alpha; -6, -4];
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