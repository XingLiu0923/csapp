long fact_for_guarded_do(long n) {
    long i = 2;
    long result = 1;
    if (i > n) goto done;
    loop:
        result = result * i;
        i ++;
        if (i <= n) goto loop;
    done:
        return result;
}