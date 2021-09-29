%%% rest of the solution is in wxmaxima
function q16
  t = linspace(0, 5*pi, 1000);
  phi = @(t) 1 - exp(-t/8) .* (cos(sqrt(63/64)*t) + sqrt(64/63)/8 * sin(sqrt(63/64)*t));
  g = us(t-3/2) - us(t-5/2);
  
  clf
  hold on
  for k = [.5 1 2]
    y = k*(us(t - 3/2) .* phi(t - 3/2) - us(t - 5/2) .* phi(t - 5/2));
    force = k*g;
    plot(t, y, 'displayname', sprintf('k = %.1f', k),
         t, force, '--', 'displayname', sprintf('%.1fg(t)', k))
  endfor
  vert(3.467484038650195) % from maxima
  hor(0.7992282796567876, 'style', '-.')
  hold off
  
  legend show
  pitics
  grid on
endfunction