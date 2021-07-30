function q19
  ws = [.7:.1:.9];
  tmax = 100*pi;
  t = linspace(0, tmax, 1000);
  u1 = @(t, w) 3 ./ (1 - w .* w) .* (cos(w .* t) - cos(t));
  u2 = @(t, w) 3 ./ (1 - w .* w) .* (cos(w .* t) - cos(t)) + cos(t) + sin(t);
  
  fig = figure;
  
  for k = 1:length(ws)   
    w = ws(k);
    subplot(length(ws), 2, 2 * k - 1)
    plot(t, u1(t, w));

    xlim([0 tmax]);
    ax
    grid on
    
    title(sprintf('\\omega = %f, u(0) = u''(0) = 0', w));
    
    subplot(length(ws), 2, 2 * k)
    plot(t, u2(t, w));
    
    xlim([0 tmax]);
    ax
    grid on
    
    title(sprintf('\\omega = %f, u(0) = u''(0) = 1', w));
    
##    ylim([-300 300])
  endfor
endfunction
