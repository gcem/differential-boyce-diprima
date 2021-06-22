function q23
  m = 180;
  g = 32.152;
  v1 = @(t) m*g/0.75 * (exp(-0.75*t/m) - 1);
  v_10 = v1(10)
  
  t1 = linspace(0,10,1000);
  vv1 = v1(t1);
  plot(t1, vv1)
  # skipped
endfunction
