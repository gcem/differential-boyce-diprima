function hor(y, dispname = sprintf('y = %f', y))
  h = ishold;
  hold on;
  plot(xlim, [y y], 'displayname', dispname);
  if !h
    hold off;
  endif
endfunction
