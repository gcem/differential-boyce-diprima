function qe1
  f = figure;
  hold on;
  hvalues = [.05, .025, .01, .001];
  yvalues = cell(size(hvalues));

  for h = hvalues
    t = 0:h:2;
    y = zeros(size(t));
    y(1) = 1;
    for i = 1:(length(t) - 1)
      y(i + 1) = y(i) + h * (1 - t(i) + 4 * y(i));
    endfor
    plot(t, y, 'displayname',
      sprintf('h = %.3f', h));
    yvalues{i} = y;
  endfor

  t = linspace(0, 2, 1000);
  y = 1 / 4 * t - 3 / 16 + 19 / 16 * exp(4 * t);
  plot(t, y, 'r--', 'displayname', ';Actual solution;')

  legend show
  grid on

  th = text(1, 100, '');
  lh = vert(-1, 'style', 'r--')
  set(f,
    'windowbuttonmotionfcn', {@mouseMove, th, lh, hvalues, yvalues},
    'busyaction', 'cancel',
    'interruptible', false)
endfunction

function mouseMove(h, data, textHandle, lineHandle, hValues, yValues)
  position = get(gca, 'currentpoint')(1,:); # x, y, z (= 1)
  position(3) = 0;

  set(lineHandle, 'xdata', ones(1,2) * position(1))
  set(textHandle, 'position', position)
  set(textHandle, 'string', 'aaa')

endfunction
