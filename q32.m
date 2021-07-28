function q32
  ts = linspace(0, 20, 10000);
  
  epv = .1:.1:.3;
  pers = [];
  amps = [];
  
  clf
  
  for k = 1:length(epv)
    subplot(3,3, [3*k-1, 3*k-2])
    eps = epv(k);
    # x is [u', u]
    f = @(x, t) [-x(2) - eps * x(2) .^ 3; x(1)];
    sln = lsode(f, [1; 0], ts);
    
    udt = sln(:, 1);
    u = sln(:, 2);
    plot(ts, udt, ';u'';', ts, u, ';u;');
    
    amp = max(max(u), abs(min(u)));
    hor(amp)
    
    ma = min(abs(u(10:end)));
    isless = abs(u(10:end)) <= .001;
    per = min(ts(10:end)(isless)) * 2;
    vert(per)
  
    legend off
    legend show
    legend location eastoutside
    ax
    grid minor
    
    title(sprintf('\\epsilon = %f', eps))
    
    pers = [pers per];
    amps = [amps amp];
  endfor
  
  subplot(3, 3, 3:3:9)
  plot(epv, pers, 'o;period;', 'linewidth', 3, epv, amps, 'o;amplitude;', 'linewidth', 3);
  xlim([0 .4])
  grid on
  xlabel '\epsilon'
  
endfunction
