function q3d
  k = 1:4;
  t = linspace(-1, 1, 1000);
  [tt, kk] = meshgrid(t,k);
  terms = 2.^kk .* tt.^kk ./ factorial(kk);
  cs = cumsum(terms, 1); # find cumsum in columns (k values)
  
  psi = exp(2*t) - 1;
  pp = repmat(psi, 4, 1)
  
  plot(tt', abs(pp - cs)');
  legend(num2str(k'), 'location', 'eastoutside');
  grid minor
  ax
endfunction
