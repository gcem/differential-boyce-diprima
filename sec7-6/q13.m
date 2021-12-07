function q13
  subplot(1,2,1)
  a = .1;
  f(-a)
  subplot(1,2,2)
  f(a)
endfunction

function f(alpha)
  A = [alpha 1; -1 alpha];
  df2(A)
  title(sprintf('\\alpha = %f', alpha));
  xlabel x_1
  ylabel x_2
  
  [v, r] = eig(A, 'vector');
  r1 = r(1);
  v1 = v(:,1);
  sln = @(t, c1, c2) c1 * real(exp(t*r1) .* v1) + c2 * imag(exp(t*r1) .* v1);
  slns2(sln, -6:3:6, -6:3:6, -40, 40)
endfunction