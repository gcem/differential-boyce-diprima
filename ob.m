function ob(varargin)
  p = inputParser();
  p.addOptional('slope', 1, @isnumeric)
  p.addParameter('name', '__auto', @ischar);
  p.addParameter('style', '', @ischar);
  p.parse(varargin{:});
  
  name = p.Results.name;
  if strcmp(name, '__auto')
    name = sprintf('y = %fx', p.Results.slope);
  endif
  
  x = xlim;
  y = x * p.Results.slope;
  h = ishold;
  hold on
  plot(x, y, p.Results.style, 'displayname', name);
  if !h
    hold off
  endif
endfunction
