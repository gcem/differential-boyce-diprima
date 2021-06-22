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
## @deftypefn {} {@var{retval} =} q15a (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-17

function retval = q15a(input1, input2)
  k = 1/5;
  f = @(y, t) (1 + sin(t)) * y / 5 - k;
  t = linspace(0, 30, 1000);
  clf
  hold on
  for y0 = 1/2:0.02:1
    y = lsode(f, y0, t);
    plot(t, y);
  endfor
  crity0 = 0.83;
  y = lsode(f, crity0, t);
  plot(t, y, 'r', 'linewidth', 3);
    
  ax
  grid minor;
endfunction
