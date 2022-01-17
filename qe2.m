function qe2
  f = figure;
  hold on;
  hValues = [.05, .025, .01, .001];
  yValues = cell(size(hValues));

  for hi = 1:length(hValues)
    h = hValues(hi);
    t = 0:h:2;
    y = zeros(size(t));
    y(1) = 1;
    for i = 1:(length(t) - 1)
      y(i + 1) = 1 / (1 - 4 * h) * (y(i) + h - h * t(i + 1));
    endfor
    plot(t, y, 'displayname',
      sprintf('h = %.3f', h));
    yValues{hi} = y;
  endfor

  t = linspace(0, 2, 1000);
  y = 1 / 4 * t - 3 / 16 + 19 / 16 * exp(4 * t);
  plot(t, y, 'r--', 'displayname', ';Actual solution;')

  th = text(1, 100, '', 'fontname', 'Mono', 'fontsize', 14); # hopefully a monospaced font
  lh = vert(-1, 'style', 'r--');
  set(lh, 'handlevisibility', 'off')
  set(f,
    'windowbuttonmotionfcn', {@mouseMove, th, lh, hValues, yValues},
    'busyaction', 'cancel',
    'interruptible', false)

  legend show
  grid on
  title 'Move the mouse pointer over the plot to see error percentages'
endfunction

function mouseMove(h, data, textHandle, lineHandle, hValues, yValues)
  position = get(gca, 'currentpoint')(1,:); # x, y, z (= 1)
  position(3) = 0;
  position(1) = t = clamp(position(1), xlim);

  yReal = 1 / 4 * t - 3 / 16 + 19 / 16 * exp(4 * t);
  errorTexts = cell(1, length(hValues) + 1);
  errorTexts{1} = 'Errors:';
  for i = 1:length(hValues)
    h = hValues(i);
    index = clamp(t / h + 1, [1, length(yValues{i})]);
    low = floor(index);
    estimate = 0;

    if (low == index)
      estimate = yValues{i}(low);
    else
      # calculate estimate using linear interpolation
      estimate = ...
        yValues{i}(low) * (low + 1 - index) + ...
        yValues{i}(low + 1) * (index - low);
    endif

    # find percent error
    error = abs(estimate - yReal) / yReal * 100;
    errorTexts{i+1} = sprintf('h = %.3f \\rightarrow Error = %5.2f%%', h, error);
  endfor

  set(lineHandle, 'xdata', ones(1,2) * t)
  set(textHandle, 'position', position)
  set(textHandle, 'string', errorTexts)
  if (t < sum(xlim) / 2) # mouse is in the left half
    set(textHandle, 'horizontalalignment', 'left');
  else
    set(textHandle, 'horizontalalignment', 'right');
  endif
endfunction
