#pragma once
#include <functional>
#include <vector>

typedef std::function<double(double, double)> DerivativeT;

/**
 * @brief Use Euler's method to approximate a curve's y values at t0, t0+h, ...
 *
 * @param derivative a function that takes (t, y) and returns the slope of the
 * tangent line to the family of functions at the point (t, y)
 * @param t0 t value to start with
 * @param y0 y value corresponding to t0
 * @param tmax maximum t value of the last point to be evaluated (last element
 * need not correspond to tmax)
 * @param numSteps number of steps
 * @return y values for t0, t0+step, ..., t0+numSteps*step. First element is
 * always y0
 */
std::vector<double>
euler(DerivativeT derivative, double t0, double y0, double step, int numSteps);
