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
## @deftypefn {} {@var{retval} =} q21 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-18

function retval = q21 (input1, input2)
  g = 9.8;
  m = 0.15;
  v0 = 20;
  x0 = 30;
  
  tmax = -30 * m * log(30*m*g / (v0 + 30*m*g));
  
  tt = linspace(0, 6, 1000);
  x = @(t) -30 * m * g * t - (v0 + 30*m*g)*30*m*exp(-t/(30*m)) + x0 ...
   + 30*m*v0 + 900*m*m*g;
  v = @(t) -30*m*g + (v0+30*m*g)*exp(-t/(30*m));
  
  hmax = x(tmax);
  
  printf("Max height is %f meters at time %f seconds.\n", hmax, tmax);
  hh = x(tt);
  vv = v(tt);
  gnd = min(tt(hh <= 0))
  plot(tt, vv, tt, hh)
  grid minor
  ax
  hor(hmax)
  vert(gnd)
  legend("v", "h", sprintf("hmax = %f", hmax), sprintf("t_{gnd} = %fs", gnd))
  title Question21
endfunction
