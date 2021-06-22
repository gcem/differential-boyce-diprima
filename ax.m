function ax
  h = ishold;
  hold on;
  xl = xlim;
  yl = ylim;
  plot(xl, [0 0], 'k');
  plot([0 0], yl, 'k');
  xlim(xl);
  ylim(yl);
  if !h
    hold off;
  endif
endfunction
