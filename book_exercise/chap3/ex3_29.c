long sum1() {
    long sum = 0;
    long i = 0;
    while (i < 10)
    {
        if (i & 1)
        {
            continue;
        }
        sum += i;
        i++;
    }
    return sum;
}

long sum2() {
    long sum = 0;
    long i = 0;
    while (i < 10)
    {
        if (i & 1) goto next;
        sum += i;
        next: i++;
    }
    return sum;
}