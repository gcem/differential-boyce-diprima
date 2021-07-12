function q4d
  t = linspace(-3, 3, 10000);
  k = 1:4;
  
  [tt, kk] = meshgrid(t, k);
  terms = (-1).^kk .* tt.^kk ./ factorial(kk);
  series = cumsum(terms); # in columns
  
  limfun = exp(-tt) - 1;
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
