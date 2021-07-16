## Plots the bifurcation diagram of u(n+1) = rho * u(n) * (1 - u(n)).
## Does lots of calculation for a lot of rho values, so it is slow.
function qbifurcation2
  rho = linspace(2.9, 3.57, 500);
  vals = [];
  npoints = [];
  threshold = .0002;
  for k = 1:length(rho)
    nums = helper(.3, rho(k));
    sorted = sort(nums');
    vals = [vals, sorted];
    dif = sorted(2:end) - sorted(1:end-1);
    npoints = [npoints, sum(dif > threshold)];
  endfor
  clf
  hold on
  plot(rho, vals)
  bifpts = npoints(2:end) > npoints(1:end-1);
  bifrho = (rho(logical([0, bifpts])) + rho(logical([bifpts, 0]))) / 2;
  # this also works: (faster if there are lots of lines to be drawn)
  # plot([bifrho; bifrho; NaN(size(bifrho))](:), repmat([0, 1, NaN], 1, length(bifrho)))
  for r = bifrho
    vert(r, sprintf('\\rho = %.3f', r));
  endfor
  grid minor
  xlim([rho(1), rho(end)])
  xlabel '\rho'
  ylabel 'points of oscillation'
  title 'Bifurcation diagram for u_{n+1} = \rho u_n (1 - u_n)'
  legend show
  legend location northwest
endfunction

function lastnums = helper(u0, rho)
  u = zeros(1, 1000);
  u(1) = u0;
  n = length(u);
  
  for k = 2:length(u)
    u(k) = rho * u(k-1) * (1 - u(k-1));
  endfor
  
  lastnums = u(n-31:n);
endfunction