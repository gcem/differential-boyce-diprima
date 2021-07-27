function q29
  tmax = 20;
  t = linspace(0, tmax, 1000);
  uh = @(t) exp(-t/8) .* sin(t * sqrt(127) / 8) * (16 / sqrt(127));
  duh = @(t) uh(t) * (-1/8) + 2 * exp(-t/8) .* cos(t * sqrt(127) / 8);
  
  u = uh(t);
  du = duh(t);
  
  subplot(1,2,1)
  
  plot(t, u, ';u;', t, du, ';u'';');
  grid minor
  ax
  ylabel 'position & speed'
  xlabel time
  
  hold on
  p1 = plot([0 0], ylim, 'g'); 
  
  subplot(1,2,2)
  
  plot(u, du)

  grid on
  ylabel 'u'''
  xlabel 'u'
  ylim([-2.2 2.2])
  xlim([-2.2 2.2])
  ax
  xticks(-2:.5:2)
  yticks(-2:.5:2)
  
  global done
  done = false
  
  hold on
  p2 = plot(0, 0, 'og', 'linewidth', 3);
  set(gcf, 'keypressfcn', @cb);
  x = 0;
  while !done
    x += pi / 200;
    x = rem(x, tmax);
    u = uh(x);
    du = duh(x);
    set(p1, 'XData', [x x])
    set(p2, 'XData', u)
    set(p2, 'YData', du)
    pause(.1)
  endwhile
  
endfunction


function cb(evt, key)
  if !strcmp(key.Key, 'escape')
    return
  endif
  global done
  done = true;
  close
endfunction
