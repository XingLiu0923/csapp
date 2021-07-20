long rfun(unsigned long x) {
    if (x == 0)
        return 0;
    unsigned long nx = x;
    long rv = rfun(nx);
    return x + rv;
}