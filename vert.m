function handleRet = vert(varargin)
  p = inputParser();
  p.addRequired('x', @isnumeric)
  p.addParameter('name', '__auto', @ischar);
  p.addParameter('style', '', @ischar);
  p.parse(varargin{:});

  name = p.Results.name;
  if strcmp(name, '__auto')
    name = sprintf('x = %f', p.Results.x);
  endif

  h = ishold;
  hold on;
  handle = plot([1 1] * p.Results.x, ylim, p.Results.style, 'displayname', name);
  if !h
    hold off;
  endif
  if nargout > 0
    handleRet = handle;
  endif
endfunction
