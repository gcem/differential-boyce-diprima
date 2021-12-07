%% Same as df2, but A is a 3x3 matrix and the drawn direction field is three
%% dimensional

function df3(A, range = 3, n = 20)
  lims = [-range, range];
  x = linspace(lims(1), lims(2), n);
  [x1, x2, x3] = meshgrid(x);
  points = [x1(:), x2(:), x3(:)]';
  vectors = A * points;
  
  % normalize - may be a bad decision in some cases
  norm = sqrt(sum(vectors.^2));
  vectors ./= repmat(norm, 3, 1);
  
  quiver3(x1(:)', x2(:)', x3(:)', vectors(1,:), vectors(2,:), vectors(3,:), 1.3);
  
  axis equal
  xlim(lims);
  ylim(lims);
  zlim(lims);
  
  % disable changing scale during rotation
  set(gca, 'cameraviewanglemode', 'manual');
endfunction
