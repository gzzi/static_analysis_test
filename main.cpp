
#include <iostream>
#include "bad_code.hpp"

int main(void) {
    int num = 10;
    int den = 0;
    int result = bad_div(num, den);

    std::cout << result << std::endl;  // dummy usage
    return 0;
}
