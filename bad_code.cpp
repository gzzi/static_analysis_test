
#include "bad_code.hpp"

int bad_div(int num, int den) {
    return num / den;
}

int bad_buffer_access(int index) {
    const int buffer[10] = {0};
    return buffer[index];
}

int forever(int m, int n)
{
  float arr[m][n];
  for (int i = 0; i < m; i++)
    for (int j = 0; j < n; i++)  // i++ ;)
      arr[i][j] = 0.f;

   return arr[0][0];  // slient the unused
}

void in_file_bad_div() {
    bad_div(42, 0);
}

void in_file_bad_buffer() {
    bad_buffer_access(12);
}
