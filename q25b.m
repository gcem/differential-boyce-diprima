function q25b
  ws = .5:.02:1.9;
  amps = zeros(size(ws));
  for k = 1:length(ws)
    w = ws(k);
    
    f = @(uv, t) [uv(2), cos(w*t) - uv(1) - 1/5*uv(1).^3 - 1/5*uv(2)];
    uv0 = [0, 0];
    
    tmax = 40*pi;
    t = linspace(0, tmax, 10000);
    uv = lsode(f, uv0, t);
    
    u = uv(:, 1);
    amp = max(u(end/2:end));
    amps(k) = amp;
  endfor
  
  fig = figure;
  plot(ws, amps, 'o');
  xlabel '\omega'
  ylabel 'amplitude'
  title 'Amplitude vs Forcing Frequency'
  xlim([.4 2])
endfunction
