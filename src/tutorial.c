
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef USE_MYMATH
#  include <MathFunctions.h>
#endif
#include "TutorialConfig.h"

double mysqrt(double input);

int main(int argc, char* argv[]) {
  if (argc < 2) {
    // report version
    printf("%s Version: %d.%d", argv[0],
      Tutorial_VERSION_MAJOR, Tutorial_VERSION_MINOR);
    printf("Usage: %s number", argv[0]);
    return 1;
  }

  // convert input to double
  const double inputValue = atof(argv[1]);
  #ifdef USE_MYMATH
    const double outputValue = mysqrt(inputValue);
  #else
    const double outputValue = sqrt(inputValue);
  #endif
  printf("The square root of %f is %f", inputValue, outputValue);
  return 0;
}