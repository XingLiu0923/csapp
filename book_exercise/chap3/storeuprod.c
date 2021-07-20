#include <inttypes.h>

typedef unsigned __int128 uint128_t;

void store_uprod(uint128_t *dest, uint64_t x, uint64_t y) {
    *dest = x * (uint128_t) y;
}

void remdiv(unsigned long x, unsigned long y, unsigned long *dp, unsigned long *rp) {
    unsigned long q = x/y;
    unsigned long r = x%y;
    *dp = q;
    *rp = r;
}