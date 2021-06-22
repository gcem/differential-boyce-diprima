function vert(x, dispname = '')
  h = ishold;
  hold on;
  plot([x, x], ylim, 'displayname', dispname);
  if !h
    hold off;
  endif
endfunction
