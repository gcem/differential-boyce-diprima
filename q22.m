function q22
  fig = figure;
  
  maxt = 10 * pi;
  t = linspace(0, maxt, 10000);
  
  m = 1;
  gamma = .125;
  k = 4;
  f0 = 3;
  w = 2;
  w0 = sqrt(k / m);
  
  mu = sqrt(4*k*m - gamma .^ 2) / (2 * m);
  del = sqrt(m.^2 * (w0.^2 - w.^2).^2 + w.^2 * gamma.^2);
  phase = atan2(w * gamma, m * (w0.^2 - w.^2));
  
  c1 = 2 - f0 * m * (w0.^2 - w.^2) / del.^2;
  c2 = c1 * gamma / (2 * m);
  
  f = @(t) f0 * cos(w * t);
  u = @(t) f0 / del * cos(w * t - phase) + ...
    exp(-gamma * t / (2*m)) .* (c1 * cos(mu * t) + c2 * sin(mu * t));
  udot = @(t) -w * f0 / del * sin(w * t - phase) + ...
    -gamma / (2 * m) * exp(-gamma*t/(2*m)) .* (c1 * cos(mu * t) + c2 * sin(mu * t)) + ...
    exp(-gamma * t / (2*m)) .* (c1 * -mu * sin(mu * t) + c2 * mu * cos(mu * t));
  
  subplot(1,3,1:2)
  hold on
  plot(t, u(t), ';position;');
  plot(t, f(t), 'r;force;');
  
  xticks(0:(2*pi/w):maxt)
  grid on
  
  subplot(1,3,3)
  plot(u(t), udot(t));
  ax
endfunction
