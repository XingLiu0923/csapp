#include "show_bytes.h"

void test(int val) {
    int ival = val;
    long long lval = (long long)ival;
    float fval = (float)ival;
    int *pval = &ival;
    show_int(ival);
    show_longlong(lval);
    show_float(fval);
    show_pointer(pval);
}

int main() {
    int a = 1 + 1;
    test(1);
}