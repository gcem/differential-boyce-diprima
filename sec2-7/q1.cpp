#include "euler.hpp"
#include <iostream>

int
main(int argc, char** argv)
{
    DerivativeT f1 = [](double t, double y) { return 3 + t - y; };

    std::cout << "Question 1\n";
    // resolution is number of steps per 0.1 interval
    for (auto resolution : std::vector<int>{ 1, 2, 4, 10 }) {
        double step = 0.1 / resolution;
        auto results1 = euler(f1, 0, 1, step, 4 * resolution);

        std::cout << "Step = " << step << '\t';
        for (int i = 0; i <= 4 * resolution; i += resolution)
            std::cout << results1[i] << '\t';
        std::cout << std::endl;
    }

    return 0;
}