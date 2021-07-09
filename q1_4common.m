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
## @deftypefn {} {@var{retval} =} q1_4common (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-07-09

function retval = q1_4common (f, y0)
  output_precision(6, 'local')
  
  t0 = 0;
  
  h = ishold;
  hold on;
  # resolution is the number of steps per .1 interval
  for resolution = [1, 2, 4, 10]
    step = .1 / resolution;
    t = (0:resolution*4) * step + t0;
    y = euler(f, t, y0);
    plot(t, y, 'DisplayName', sprintf('h = %f', step));
    
    step
    values = y(1:resolution:end)
  endfor
  legend show
  grid minor
  ax
  
  if !h
    hold off
  endif
endfunction
