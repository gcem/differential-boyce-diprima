function hor(y, dispname = '')
  h = ishold;
  hold on;
  plot(xlim, [y y], 'displayname', dispname);
  if !h
    hold off;
  endif
endfunction
