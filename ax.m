function ax
  h = ishold;
  hold on;
  xl = xlim;
  yl = ylim;
  plot(xl, [0 0], 'k', 'handlevisibility', 'off');
  plot([0 0], yl, 'k', 'handlevisibility', 'off');
  xlim(xl);
  ylim(yl);
  if !h
    hold off;
  endif
endfunction
