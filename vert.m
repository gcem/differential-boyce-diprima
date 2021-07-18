function vert(x, dispname = sprintf('x = %f', x))
  h = ishold;
  hold on;
  plot([x, x], ylim, 'displayname', dispname);
  if !h
    hold off;
  endif
endfunction
