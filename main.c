#include <stdint.h>
#include <stdio.h>
#include <math.h>

extern int cordic(int);

#define SCALING_FACTOR (16)

static inline int32_t fixed_from_float(float a) {
  return (int32_t)(a * (float)(1 << SCALING_FACTOR));
}

static inline float fixed_to_float(int32_t a) {
  return (float)a / (float)(1 << SCALING_FACTOR);
}

int main() {
    printf("ours: %f\n", fixed_to_float(cordic(fixed_from_float(1.0))));
    printf("std : %f\n", sin(1.0));
}
