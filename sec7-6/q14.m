function q14
  d = .5;
  subplot(2,3,1)
  f(sqrt(20)-d)
  subplot(2,3,4)
  f(sqrt(20)+d)
  subplot(2,3,2)
  f(-d)
  subplot(2,3,5)
  f(+d)
  subplot(2,3,3)
  f(-sqrt(20)-d)
  subplot(2,3,6)
  f(-sqrt(20)+d)
endfunction

function f(alpha)
  A = [0, -5; 1, alpha];
  df2(A)
  title(sprintf('\\alpha = %f', alpha));
  xlabel x_1
  ylabel x_2
  
  [v, r] = eig(A, 'vector');
  sln = 0; # declare it
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
  
  slns2(sln, -6:3:6, -6:3:6, -40, 40)
endfunction
