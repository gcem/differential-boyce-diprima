function q7b
  t = linspace(-4, 4);
  k = 1:15;
  pr = cumprod(1:2:(2*k(end)-1));
  
  [tt, kk] = meshgrid(t, k);
  [_, kkpr] = meshgrid(t, pr);
  terms = tt.^(2*kk-1) ./ kkpr;
  series = cumsum(terms); # in columns
  
  plot(tt', series');
  legend(num2str(k'));
  legend location westoutside
  grid minor
  ax
endfunction
