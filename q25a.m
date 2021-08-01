function q25a
  ws = .5:.25:1.9;
  fig = figure;
  for k = 1:length(ws)
    if k <= length(ws) / 2
     subplot(length(ws) / 2, 2, 2 * k - 1)
    else
     subplot(length(ws) / 2, 2, 2 * (k - length(ws) / 2))
    endif
    
    w = ws(k);
    
    f = @(uv, t) [uv(2), cos(w*t) - uv(1) - 1/5*uv(1).^3 - 1/5*uv(2)];
    uv0 = [0, 0];
    
    tmax = 40*pi;
    t = linspace(0, tmax, 10000);
    uv = lsode(f, uv0, t);
    
    p = plot(t, uv);
    set(p(2), 'linestyle', '--')
    
    legend('u', 'u''');
    xlim([0 tmax]);
    ylim([-5 5]);
    ax
    
    title(sprintf('\\omega = %f', w))
  endfor
endfunction
