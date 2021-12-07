function ax3
  h = ishold;
  hold on;
  xl = xlim;
  yl = ylim;
  zl = zlim;
  plot3(xl, [0 0], [0 0], 'k', 'handlevisibility', 'off');
  plot3([0 0], yl, [0 0], 'k', 'handlevisibility', 'off');
  plot3([0 0], [0 0], zl, 'k', 'handlevisibility', 'off');
  xlim(xl);
  ylim(yl);
  zlim(zl);
  if !h
    hold off;
  endif
endfunction
