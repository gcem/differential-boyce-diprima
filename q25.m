function q25
  gamma = 0.25;
  
  w = sqrt(4-gamma*gamma) / 2;
  u = @(t) exp(-gamma * t / 2) .* (2 * cos(t*w) + gamma / w * sin(t*w));
  
  t = linspace(0, 20*pi, 1000);
  ut = u(t);
  
  plot(t, ut);
  
  xlim([0 20*pi])
  hor(.01)
  hor(-.01)
endfunction
