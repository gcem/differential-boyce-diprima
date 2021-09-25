function q25d2
  err = .01;
##  gammas = linspace(1.7, 1.8, 101);
##  gammas = linspace(1.71, 1.74, 101);
  gammas = linspace(1.715, 1.725, 201);
  tmax = 4*pi;
  t = linspace(0, tmax, 15000);
  
  tmins = zeros(size(gammas));
  
  clf
  subplot(1,3,1:2);
  hold on
  for k = 1:length(gammas)
    gamma = gammas(k);
    w = sqrt(4-gamma*gamma) / 2;
    u = @(t) exp(-gamma * t / 2) .* (2 * cos(t*w) + gamma / w * sin(t*w));
    
    ut = u(t);
    
    oob = abs(ut) > err;
    tmin = max(t(oob));
    tmins(k) = tmin;
    
    if rem(k, ceil(length(gammas) / 10)) == 0
    plot(t, ut, 'displayname', sprintf('\\bf\\gamma = %f', gamma));
    vert(tmin, 'name', '')
    endif
  endfor
  
  xlim([0 tmax])
  hor(err)
  hor(-err)
  legend show
  xlabel t
  ylabel y
  
  subplot(1, 3, 3)
  plot(gammas, tmins, 'o', 'linewidth', 3)
  xlabel '\bf\gamma'
  ylabel '\bf\tau'
  grid minor
endfunction
