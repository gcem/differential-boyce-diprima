function q24
  w = 1;
  f = @(uv, t) [uv(2), cos(w*t) - uv(1) - 1/5*uv(1).^3];
  uv0 = [0, 0];
  
  tmax = 40*pi;
  t = linspace(0, tmax, 10000);
  uv = lsode(f, uv0, t);
  
  fig = figure;
  plot(t, uv);
  legend('u', 'u''');
  xlim([0 tmax]);
  ax
endfunction
