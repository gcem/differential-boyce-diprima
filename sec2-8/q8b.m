function q8b
  t = linspace(-2.8, 1.8, 1000);
  k = 0:15;
  pr = cumprod(k*3+2);
  
  [tt, kk] = meshgrid(t, k);
  [_, kkpr] = meshgrid(t, pr);
  terms = -tt.^(3*kk+2) ./ kkpr;
  series = cumsum(terms); # in columns
  
  plot(tt', series');
  legend(num2str(k'));
  legend location westoutside
  grid minor
  ax
endfunction
