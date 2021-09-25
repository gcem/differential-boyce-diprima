function hor(varargin)
  p = inputParser();
  p.addRequired('y', @isnumeric)
  p.addParameter('name', '__auto', @ischar);
  p.addParameter('style', '', @ischar);
  p.parse(varargin{:});
  
  name = p.Results.name;
  if strcmp(name, '__auto')
    name = sprintf('y = %f', p.Results.y);
  endif
  
  h = ishold;
  hold on;
  plot(xlim, [1 1] * p.Results.y, p.Results.style, 'displayname', name);
  if !h
    hold off;
  endif
endfunction
