function q19c
  clf
  rho = linspace(3.564, 3.57, 6);
  for k = 1:length(rho)
    subplot(length(rho)/2, 2, k);
    hold on
    helper(.3, rho(k))
    grid minor
  endfor
endfunction

function helper(u0, rho)
  u = zeros(1, 1000);
  u(1) = u0;
  n = length(u);
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
  endfor
  
  plot(0:n-1, u(1:n), 'displayname', sprintf('u_0 = %d', u0));
  xlim([n-100, n])
  
  for val = u(n-15:n)
    hor(val)
  endfor
  xlabel n
  ylabel u_n
  title(sprintf('\\rho = %.5f, n_{max} = %d', rho, n-1))
endfunction