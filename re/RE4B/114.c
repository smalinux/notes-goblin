// RE4B p.606  3.5 qsort() revisited

/* qsort int comparison function */
int int_cmp(const void *a, const void *b)
{
    const int *ia = (const int *)a; // casting pointer types
    const int *ib = (const int *)b;
    return *ia  - *ib;
        /* integer comparison: returns negative if b > a
        and positive if a > b */
}
