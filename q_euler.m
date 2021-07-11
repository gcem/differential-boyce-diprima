## Copyright (C) 2021 cem
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} q_euler (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-07-11

function q_euler(f, y0, t0, npts, dist, reslist, sln = @(t) zeros(size(t)))
  
  output_precision(6, 'local')
  
  t0 = 0;
  
  resultmat = [];
  
  h = ishold;
  hold on;
  # resolution is the number of steps per .1 interval
  for resolution = reslist
    step = dist / resolution;
    t = (0:resolution*npts) * step + t0;
    y = euler(f, t, y0);
    plot(t, y, 'DisplayName', sprintf('h = %f', step));
    
    step;
    values = y(1:resolution:end);
    resultmat = [resultmat, values'];
  endfor
  legend show
  grid minor
  ax
  
  if !h
    hold off
  endif
  
  ts = (0:npts)*dist + t0;
  actual = sln(ts);
  resultmat = [actual', resultmat];
  printf('Results\n');
  printf('  Expected   ');
  printf('h=%-7.3f ', dist ./ reslist); # print column headers
  printf('\n');
  disp(resultmat);
  printf('\nErrors\n');
  printf('   t          ');
  printf('h=%-8.3f ', dist ./reslist);
  printf('\n');
  disp([ts', resultmat(:, 2:end) - repmat(actual', 1, length(reslist))]);
  
endfunction
