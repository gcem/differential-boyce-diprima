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
## @deftypefn {} {@var{retval} =} q9 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-23

function retval = q9 (input1, input2)
  t = linspace(-5,5, 1000);
  y1 = sqrt(t .* t - 1);
  y2 = -y1;
  plot(t, y1, 'r', t, y2, 'r');
  ax
  grid minor
  ob(1, 'style', 'b--')
  ob(-1, 'style', 'b--')
endfunction
