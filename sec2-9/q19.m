function q19
  r1 = 3;
  r2 = 3.449;
  r3 = 3.544;
  
  delta = 4.669201609;
  
  ratio = (r2-r1) / (r3-r2)
  
  percentdif = ((ratio / delta) - 1) * 100
  
  rho4 = r3 + (r3-r2) / delta
  
  lim = r2 + (r3-r2)*delta/(delta-1)
endfunction
