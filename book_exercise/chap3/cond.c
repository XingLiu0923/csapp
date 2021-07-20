void cond(long a, long *p) {
    if (p && a > *p)
        *p = a;
}

void cond_goto(long a, long *p) {
    int t = p && (a > *p);
    if (!t) return;
    *p = a;
}