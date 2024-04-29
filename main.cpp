
#include <iostream>
#include "bad_code.hpp"

int main(void) {
    int result = bad_div(42, 0);

    std::cout << result << std::endl;  // dummy usage
    return 0;
}
