#include <stdio.h>

#define N 16
typedef int fix_matrix[N][N];

void  fix_set_diag_opt(fix_matrix A, int val) {
    int *Aptr = &A[0][0];
    int *Aend = &A[N][N];
    do
    {
        *Aptr = val;
        Aptr = Aptr + (N + 1);
    } while (Aptr < Aend);
    
}

int main() {
    fix_matrix B;
    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < N; j++)
        {
            B[i][j] = 2;
        }
    }

    fix_set_diag_opt(B, 0);

    for (size_t i = 0; i < N; i++)
    {
        for (size_t j = 0; j < N; j++)
        {
            printf("%d ", B[i][j]);
        }
        printf("\n");
    }

    return 0;
    
}