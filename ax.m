function ax
  h = ishold;
  hold on;
  xl = xlim;
  yl = ylim;
  plot(xl, [0 0], 'k;axis;');
  plot([0 0], yl, 'k;axis;');
  xlim(xl);
  ylim(yl);
  if !h
    hold off;
  endif
endfunction
