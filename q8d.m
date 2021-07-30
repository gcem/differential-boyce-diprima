function q8d
  w2 = linspace(-10, 70, 1000);
  r2 = (4 * (98-w2).^2 + 100*w2) ./ ((98-w2).^2 - 100*w2);
  
  plot(w2, r2)
endfunction
