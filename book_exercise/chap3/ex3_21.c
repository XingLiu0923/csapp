long test(long x, long y) {
    long val = x * 8;
    if (y > 0)
    {
        if (x >= y)
        {
            val = y & x;
        } else
        {
            val = y - x;
        }
    } else if (y + 2 <= 0)
    {
        val = x + y;
    }
    return val;
}