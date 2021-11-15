function ob(varargin)
  p = inputParser();
  p.addOptional('slope', 1, @isnumeric)
  p.addParameter('name', '__auto', @ischar);
  p.addParameter('style', '', @ischar);
  p.addParameter('lw', 1, @isnumeric)
  p.parse(varargin{:});
  
  name = p.Results.name;
  if strcmp(name, '__auto')
    name = sprintf('y = %fx', p.Results.slope);
  endif
  
  x = xlim;
  y = x * p.Results.slope;
  h = ishold;
  hold on
  plot(x, y, p.Results.style, 'displayname', name, 'linewidth', p.Results.lw);
  if !h
    hold off
  endif
endfunction
