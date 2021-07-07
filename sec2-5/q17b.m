
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
## @deftypefn {} {@var{retval} =} q17b (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-07-05

function retval = q17b (input1, input2)
  K = 80.5e6;
  y0 = K * .25;
  r = .71;
  
  y = @(t) K * power(y0 / K, exp(-r*t));
  sprintf('y(2) = %f\n', y(2))
  sprintf('y(2) / K = %f\n', y(2) / K)
endfunction
