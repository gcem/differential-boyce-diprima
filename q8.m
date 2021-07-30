function q8
  t = linspace(0, 7 * pi, 1000);
  a = 8 / (391 + 400 / 391);
  b = -160 / (391 * 391 + 400);
  c1 = -a;
  c2 = (3e-2 - b + 5 * c1) / sqrt(73);
  
  ss = @(t) a * cos(t / 2) + b * sin(t / 2);
  tr = @(t) exp(-5*t) .* (c1 * cos(sqrt(73)*t) + c2 * sin(sqrt(73)*t));
  
  sst = ss(t);
  trt = tr(t);
  
  fig = figure;
  hold on;
  plot(t, sst, ';Steady state;');
  plot(t, sst + trt, '--;Total response;');
  
  ax
  grid on
endfunction
