#include "euler.hpp"

std::vector<double>
euler(std::function<double(double, double)> derivative,
      double t0,
      double y0,
      double step,
      int numSteps)
{
    std::vector<double> results(numSteps + 1);
    results[0] = y0;
    double t = t0;
    double y = y0;

    for (int i = 1; i <= numSteps; i++) {
        double yNext = y + derivative(t, y) * step;
        results[i] = yNext;
        y = yNext;
        t += step;
    }

    return results;
}