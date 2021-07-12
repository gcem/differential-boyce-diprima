function q6b
  t = linspace(-2, 2);
  n = 1:6;
  [tt,nn] = meshgrid(t, n);
  yn = tt - tt.^(nn+1)./factorial(nn+1);
  
  plot(tt', yn');
  legend(num2str(n'));
  legend location eastoutside
  grid minor
  ax
endfunction
