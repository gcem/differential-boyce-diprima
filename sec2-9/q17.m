function q17
  clf
  rho = [2.9, 2.95, 2.99, 3.01, 3.05, 3.1];
  for k = 1:length(rho)
    subplot(length(rho)/2,2,2*(rem(k-1,3)+1)-1 + floor(k/4));
    hold on
    helper(.3, rho(k))
    legend show
    legend location eastoutside
    grid minor
  endfor
  a = axes('visible', 'off');
##  title(a, 'Oscillations are said to be reached when \delta < .001');
  text(.4, 0, 'Oscillations are said to be reached when \delta < .001', ...
    'horizontalalignment', 'center', 'verticalalignment', 'top', 'parent', a);
endfunction

function helper(u0, rho)
  u = zeros(1, 200);
  u(1) = u0;
  n = 200;
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
    if k>2 && abs(u(k) - u(k-2)) < 0.0001
      n = k;
      break
    endif
  endfor
  
  plot(0:n-1, u(1:n), 'displayname', sprintf('u_0 = %d', u0));
  
  if (abs(u(n) - u(n-1)) > 0.01)
    a = min(u(n), u(n-1));
    b = max(u(n), u(n-1));
    hor(a, sprintf('min = %f', a));
    hor(b, sprintf('max = %f', b));
  endif
  xlabel n
  ylabel u_n
  xlim([0, n])
  title(sprintf('\\rho = %.2f, n_{max} = %d', rho, n-1))
endfunction