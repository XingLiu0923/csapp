#include <stdio.h>

int main() {
    int res = 1, t;
    int n = 0;
    do
    {
        t = res;
        n++;
        res = res * n;
    } while (res / n == t);
    printf("%d\n", n - 1);

    return 0;
}