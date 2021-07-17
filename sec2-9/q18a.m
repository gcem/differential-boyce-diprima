function q18a
  clf
##  rho = 3.1:.1:3.6;
##  rho = linspace(3.4, 3.5, 10);
  rho = linspace(3.444, 3.456, 6);
  for k = 1:length(rho)
    subplot(length(rho)/2, 2, k);
    hold on
    helper(.3, rho(k))
    grid minor
  endfor
endfunction

function helper(u0, rho)
  u = zeros(1, 500);
  u(1) = u0;
  n = length(u);
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
  endfor
  
  plot(0:n-1, u(1:n), 'displayname', sprintf('u_0 = %d', u0));
  xlim([n-100, n])
  
  if (abs(u(n) - u(n-1)) > 0.01)
    a = min(u(n), u(n-1));
    b = max(u(n), u(n-1));
    hor(a, sprintf('min = %f', a));
    hor(b, sprintf('max = %f', b));
  endif
  xlabel n
  ylabel u_n
  title(sprintf('\\rho = %.5f, n_{max} = %d', rho, n-1))
endfunction