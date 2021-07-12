function q5d
  t = linspace(-3, 3, 10000);
  k = 1:4;
  
  [tt, kk] = meshgrid(t, k);
  terms = 4 * (-0.5).^(kk+1) .* tt.^(kk+1) ./ factorial(kk+1);
  series = cumsum(terms); # in columns
  
  limfun = 4*exp(-tt/2) + 2*tt - 4;
  errors = abs(limfun - series);
  
  plot(tt', errors');
  legend(num2str(k'));
  
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
