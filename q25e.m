function q25e
  ## copy part a
  err = .01;
  gammas = [0.15, 0.25, 0.5, 1, 1.4];
  tgs = [69.5, 41.5, 19.8, 8.8, 6.7];
  vals = [err -err err err -err];
  tmax = 28*pi;
  t = linspace(0, tmax, 5000);
  
  tmins = zeros(size(gammas));
  
  clf
  subplot(1,2,1)
  hold on
  for k = 1:length(gammas)
    gamma = gammas(k);
    tguess = tgs(k);
    val = vals(k);
    w = sqrt(4-gamma*gamma) / 2;
    u = @(t) exp(-gamma * t / 2) .* (2 * cos(t*w) + gamma / w * sin(t*w));
    
    ut = u(t);
    tmin = fsolve(@(t) u(t) - val, tguess);
    tmins(k) = tmin;
  endfor
  plot(gammas, tmins, 'o', 'linewidth', 3, 'displayname', 'Part a-b result')
  
  appr = 1 ./ gammas .* log(16 ./ (err * err * (4 - gammas .^ 2)));
  plot(gammas, appr, 'o', 'linewidth', 3, 'displayname', 'Part e approximation')
  
  legend show
  xlabel '\bf\gamma'
  ylabel '\bf\tau'
  title 'Part a-b vs Part e'
  grid on
  
  clear
  subplot(1,2,2)
  
  # copy part d2
  err = .01;
  gammas = linspace(1.6, 1.99, 201);
  tmax = 4*pi;
  t = linspace(0, tmax, 15000);
  
  tmins = zeros(size(gammas));
  
  for k = 1:length(gammas)
    gamma = gammas(k);
    w = sqrt(4-gamma*gamma) / 2;
    u = @(t) exp(-gamma * t / 2) .* (2 * cos(t*w) + gamma / w * sin(t*w));
    
    ut = u(t);
    
    oob = abs(ut) > err;
    tmin = max(t(oob));
    tmins(k) = tmin;
  endfor
  
  plot(gammas, tmins, 'o', 'linewidth', 3, 'displayname', 'Part d result')
  xlabel '\bf\gamma'
  ylabel '\bf\tau'
  grid minor
  
  hold on
  appr = 1 ./ gammas .* log(16 ./ (err * err * (4 - gammas .^ 2)));
  plot(gammas, appr, 'o', 'linewidth', 3, 'displayname', 'Part e approximation')
  
  legend show
  legend location southwest
  xlabel '\bf\gamma'
  ylabel '\bf\tau'
  title 'Part d vs Part e'

endfunction
