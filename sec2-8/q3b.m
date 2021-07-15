function q3b
  k = 1:10;
  t = linspace(-3, 2);
  [tt, kk] = meshgrid(t,k);
  terms = 2.^kk .* tt.^kk ./ factorial(kk);
  cs = cumsum(terms, 1); # find cumsum in columns (k values)
  
  plot(tt', cs');
  legend(num2str(k'), 'location', 'eastoutside');
  grid minor
endfunction
