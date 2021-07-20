struct ELE
{
    long v;
    struct ELE *p;
};

long fun(struct ELE *ptr) {
    long res = 0;
    while (!ptr)
    {
        res = res + ptr->v;
    }
    return res;
}
