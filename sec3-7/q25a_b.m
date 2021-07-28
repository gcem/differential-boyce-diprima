function q25a_b
  err = .01;
  gammas = [0.15, 0.25, 0.5, 1, 1.4];
  tgs = [69.5, 41.5, 19.8, 8.8, 6.7];
  vals = [err -err err err -err];
  tmax = 28*pi;
  t = linspace(0, tmax, 5000);
  
  tmins = zeros(size(gammas));
  
  clf
  subplot(1,3,1:2);
  hold on
  for k = 1:length(gammas)
    gamma = gammas(k);
    tguess = tgs(k);
    val = vals(k);
    w = sqrt(4-gamma*gamma) / 2;
    u = @(t) exp(-gamma * t / 2) .* (2 * cos(t*w) + gamma / w * sin(t*w));
    
    ut = u(t);
    
    plot(t, ut, 'displayname', sprintf('\\bf\\gamma = %f', gamma));
    tmin = fsolve(@(t) u(t) - val, tguess);
    vert(tmin, '')
    tmins(k) = tmin;
  endfor
  
  xlim([0 tmax])
  hor(err)
  hor(-err)
  legend show
  xlabel t
  ylabel y
  
  text(10*pi, 2, sprintf('\\gamma = %f \\rightarrow \\tau = %f\n', [gammas; tmins]), 'verticalalignment', 'top')

  subplot(1, 3, 3)
  plot(gammas, tmins, 'o', 'linewidth', 3)
  xlabel '\bf\gamma'
  ylabel '\bf\tau'
endfunction
