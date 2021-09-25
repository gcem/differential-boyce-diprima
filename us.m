%%% unit step function
function result = us(t)
  result = zeros(size(t));
  result(t >= 0) = 1;
endfunction