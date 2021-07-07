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
## @deftypefn {} {@var{retval} =} q15b (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-07-05

function retval = q15b (input1, input2)
  r = .025;
  a = .1;
  b = .9;
  
  T = 1 / r * log((1 - a) / a * (1 / (1 - b) - 1));
  
  K = 1000; # arbitrary
  y0 = K * a;
  y1 = K * b;
  
  t = linspace(-50, 200, 1000);
  y = K * (1 - 1 ./ (1 + y0 / (K - y0) * exp(r*t)));
  
  plot(t,y);
  grid minor;
  ylim([-.2 * K, 1.2 * K])
  hor(K * a);
  hor(K * b);
  hor(K)
  vert(T, sprintf('t = %f', T));
  ax
  legend show
endfunction
