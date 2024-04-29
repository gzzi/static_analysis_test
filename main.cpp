
#include <iostream>
#include "bad_code.hpp"

int main(void) {

    std::cout << bad_code::bad_buffer_access(11) << std::endl;

    int result = bad_code::bad_div(42, 0);

    std::cout << result << std::endl;  // dummy usage
    return 0;
}
