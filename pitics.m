%%% not piticks because I don't want to press another key :D
function pitics(step = 1)
  lim = 100;
  xticks((-lim*pi:pi:lim*pi) * step);
  labels = strsplit(sprintf('%d\\pi_', (-lim:lim) * step), '_');
  if step == 1
    % avoid 1pi and -1pi
    xticklabels({labels{1:lim-1}, '-\pi', '0', '\pi', labels{end-lim+1:end}})
  else
    xticklabels({labels{1:lim}, '0', labels{end-lim:end}})
  endif
endfunction