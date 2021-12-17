#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
  // expect 1 base argument and 1 exponent argument
  if (argc < 2) {
    printf("Usage: ./exp 4 3");
    return 1;
  }
  const double base = atof(argv[1]);
  const double exp = atof(argv[2]);
  const double result = pow(base, exp);
  printf("Base: %f\nExponent: %f\nResult: %f\n", base, exp, result);
  return 0;
}
