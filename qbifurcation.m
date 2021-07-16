## Plots the bifurcation diagram of u(n+1) = rho * u(n) * (1 - u(n)).
## Does lots of calculation for a lot of rho values, so it is slow.
function qbifurcation
  rho = linspace(3.3, 3.6);
  vals = [];
  for k = 1:length(rho)
    nums = helper(.3, rho(k));
    vals = [vals, sort(nums')];
  endfor
  plot(rho, vals)
  grid minor
  xlim([rho(1), rho(end)])
  xlabel '\rho'
  ylabel 'points of oscillation'
  title 'Bifurcation diagram for u_{n+1} = \rho u_n (1 - u_n)'
endfunction

function lastnums = helper(u0, rho)
  u = zeros(1, 5000);
  u(1) = u0;
  n = length(u);
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
  endfor
  
  lastnums = u(n-1023:n);
endfunction