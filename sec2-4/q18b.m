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
## @deftypefn {} {@var{retval} =} q18b (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: cem <cem@debian>
## Created: 2021-06-18

function retval = q18b (input1, input2)
  t0 = 60;
  t1 = 15;
  k = 0.2;
  w = pi / 12;
  
  t = linspace(0, 96, 1000);
##  S = t0 + t1 * ...
##  (cos(w*t) + (k * power(w, 3) * sin(w*t) - ...
##  w * w * cos(w * t)) ./ (1 + power(k * w, 2)));
  T = t0 + t1 * cos(w * t);
  S = t0 + t1 * k * (k * cos(w * t) + w * sin(w * t)) / (k * k + w * w);
  
  mins = min(S);
  maxs = max(S);
  
  sbegin = S(1:50);
  p = sbegin == max(sbegin);
  peak = t(p);
  
  plot(t, S, t, T);
  hor(maxs)
  hor(mins)
  vert(peak)
  
  legend("building", "ambient", sprintf("max = %f", maxs), sprintf("min = %f", mins),
    sprintf("peak at %f", peak))
  grid minor
  
  printf("amplitude ~ %f\n", (maxs - mins) / 2);
endfunction
