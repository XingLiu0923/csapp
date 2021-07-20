long test(long x, long y, long z) {
    long val = x + y + z;
    if (x + 3 < 0)
    {
        if (y - z >= 0)
        {
            val = y * z;
        } else
        {
            val = x * y;
        }
    } else if (x - 2 > 0)
    {
        val = x * z;
    }
    
    return val;
}