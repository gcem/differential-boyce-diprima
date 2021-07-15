function q5b
  t = linspace(-4, 10);
  k = 1:20;
  
  [tt, kk] = meshgrid(t, k);
  terms = 4 * (-0.5).^(kk+1) .* tt.^(kk+1) ./ factorial(kk+1);
  series = cumsum(terms); # in columns
  
  plot(tt', series');
  legend(num2str(k'));
  legend location westoutside
  grid minor
  ax
  
  limfun = 4*exp(-t/2) + 2*t - 4;
  hold on
  ## plot(t, limfun, ';solution;');
  hold off;
endfunction
