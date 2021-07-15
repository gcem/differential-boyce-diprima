function q14
  clf
  rho = [3.2, 2.6, 2.8, 3.4];
  for k = 1:length(rho)
    subplot(length(rho)/2,2,k);
    title(sprintf('\\rho = %f', rho(k)))
    hold on
    helper(.2, rho(k))
    helper(.4, rho(k))
    helper(.6, rho(k))
    helper(.8, rho(k))
    helper(.3, rho(k))
    legend show
    legend location eastoutside
    grid minor
  endfor
endfunction

function helper(u0, rho)
  u = zeros(1, 30);
  u(1) = u0
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
  endfor
  
  plot(0:length(u)-1, u, 'displayname', sprintf('u_0 = %d', u0));
  xlabel n
  ylabel u_n
endfunction