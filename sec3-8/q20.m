function q20
  ws = .7:.1:.9;
  tmax = 100*pi;
  t = linspace(0, tmax, 1000);
  u = @(t, w) 3 ./ (1 - w .* w) .* (cos(w .* t) - cos(t));
  udot = @(t, w) 3 ./ (1 - w .* w) .* (-w .* sin(w .* t) + sin(t));
  
  fig = figure;
  
  for k = 1:length(ws)   
    w = ws(k);
    subplot(2, length(ws), k)
    ut = u(t, w);
    udott = udot(t, w);
    plot(ut, udott);

    ax
    grid on
    
    title(sprintf('Phase plot for \\omega = %f', w));
    xlabel u
    ylabel "u'"
    
    subplot(2, length(ws), k + 3)
    plot(t, ut, 'b;u;', t, udott, 'r;u'';')
    xlim([0 tmax/4])
    ax
    grid on
  endfor
endfunction
