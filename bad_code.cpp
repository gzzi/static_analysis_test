
#include "bad_code.hpp"

int bad_div(int num, int den) {
    return num / den;
}

// void in_file_bad_call() {
//     bad_div(10, 0);
// }

int bad_buffer_access(int index) {
    int buffer[10] = {0};
    return buffer[index];
}
