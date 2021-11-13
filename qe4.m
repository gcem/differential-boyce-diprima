function qe4
  A = ones(3) - eye(3);
  df3(A);
  ax3
  
  % plot the span of two eigenvectors
  % corresponding to the eigenvalue -1.
  % on this plane solutions approach the origin.
  
  v1 = reshape([1 0 -1], 1, 1, 3);
  v2 = reshape([1 -1 0], 1, 1, 3);
  [t1, t2] = meshgrid(linspace(-3, 3, 10));
  span = v1 .* t1 + v2 .* t2; % notice the matrix product
  hold on
  surf(span(:,:,1), span(:,:,2), span(:,:,3), 'facealpha', 0.2)
endfunction