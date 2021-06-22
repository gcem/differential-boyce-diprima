function q18c
  t1 = 15;
  w = pi / 12;
  
  k = linspace(0.01, 5, 1000);
  r = t1 * k ./ sqrt(k .* k + w * w);
  tau = atan(w ./ k) / w;
  
  plot(k, r, k, tau);
  legend('R', '\tau')
  grid minor
  ax
endfunction
