#include <stdio.h>

unsigned floatScale2(unsigned uf) {
    int tmin = 1 << 31;
    // int bias = 1 << 7 - 1;
    int expMask = (1 << 8) - 1;
    int s = uf & tmin;
    int exp = (uf >> 23) & expMask;
    printf("%d\n", exp);
    int frac = ((1 << 23) - 1) & uf;
    if (!exp)
    {
        frac <<= 1;
    } else {
        exp = (exp + 1) & expMask;
    }
    
    if (!(exp ^ expMask))
    {
        return uf;
    }
    return s | ((exp << 23) & (tmin - 1)) | frac;
}

int main()
{
    // printf("%d\n", floatScale2(1065353216));
    printf("%d\n", (int)-2.5);
    return 0;
}