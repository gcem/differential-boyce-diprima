function q4b
  t = linspace(-3, 3);
  k = 1:4;
  
  [tt, kk] = meshgrid(t, k);
  terms = (-1).^kk .* tt.^kk ./ factorial(kk);
  series = cumsum(terms); # in columns
  
  plot(tt', series');
  legend(num2str(k'));
  
  grid minor
  ax
endfunction
