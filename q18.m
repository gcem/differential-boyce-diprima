function q18
  ws = [.7:.1:.9, .95, .99, .999];
  tmax = 150*pi;
  t = linspace(0, tmax, 1000);
  u = @(t, w) 3 ./ (1 - w .* w) .* (cos(w .* t) - cos(t));
  
  fig = figure;
  
  for k = 1:length(ws)
    if k <= length(ws) / 2
     subplot(length(ws) / 2, 2, 2 * k - 1)
    else
     subplot(length(ws) / 2, 2, 2 * (k - length(ws) / 2))
    endif
     
    w = ws(k);
    plot(t, u(t, w));
    xlim([0 tmax]);
    ax
    grid on
    title(sprintf('\\omega = %f', w));
    
##    ylim([-300 300])
  endfor
endfunction
