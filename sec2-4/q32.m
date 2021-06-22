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
## @deftypefn {} {@var{retval} =} q32 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-22

function retval = q32 (input1, input2)
  ks = linspace(0.1, 3, 10);
  theta = linspace(0, 2*pi);
  clf
  hold on
  
  for k = ks
    x = k * k / 2 * (theta - sin(theta));
    y = k * k / 2 * (1 - cos(theta));
    plot(x, -y, 'displayname', sprintf('k = %f', k));
  endfor
  
  plot(1, -2, 'o', 'color', 'blue')
  ax
  
  k = 2.193446;
  x = k * k / 2 * (theta - sin(theta));
  y = k * k / 2 * (1 - cos(theta));
  plot(x, -y, '--', 'displayname', sprintf('k = %f (part d)', k));
    
  legend show
endfunction
