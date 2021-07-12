function q6d
  t = linspace(-2, 2, 10000);
  k = 1:4;
  
  [tt, kk] = meshgrid(t, k);
  series = tt - tt.^(kk+1)./factorial(kk+1);; # in columns
  
  limfun = tt;
  errors = abs(limfun - series);
  
  plot(tt', errors');
  legend(num2str(k'));
  legend location eastoutside
  
  grid minor
  ax
  
  # calculate approximate bounds for the given tolerance
  # (this code is so stupid but it works)
  tolerance = .05;
  tol = abs(errors - tolerance);
  toldif = tol(:, 2:end) - tol(:, 1:end-1);
  tdneg = toldif(:, 2:end) .* toldif(:, 1:end-1) <= 0;
  tdneg = [zeros(size(k))', tdneg, zeros(size(k))'];
  p = tt(logical(tdneg));
  [p(4:-1:1), p(end-3:end)]
endfunction
