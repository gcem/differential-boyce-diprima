function q26
  clf
  subplot(1, 2, 1)
  ylim([-.5,1])
  hold on
  as = [1 .5 .25 2];
  tlims = [1.6 3.3 7 .9];
  ylims = [1 -1 1 1] * .1;
  tmins = [];
  
  for k = 1:length(as)
    a = as(k);
    tlim = tlims(k);
    u = @(t) exp(-t*a) .* (cos(t) + a*sin(t));
    t = linspace(0, 20, 1000);
    
    plot(t, u(t), 'displayname', sprintf('a = %.2f', a))
    
    tmin = fsolve(@(t) u(t) - ylims(k), tlim);
    vert(tmin, sprintf('t = %.5f (a = %.2f)', tmin, a))
    tmins = [tmins, tmin];
  endfor
  legend show

  hor(.1)
  hor(-.1)
  ax
  grid minor
  
  subplot(1, 2, 2)
  plot(as, tmins, 'o', 'linewidth', 3)
  grid minor
  title ('Minimum T with |y| < .1 vs a')
  xlabel a
  ylabel T_{min}
  xlim([0,2.5])
endfunction
