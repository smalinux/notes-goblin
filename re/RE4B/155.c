// RE4B p.778  3.23.2 Passing values as pointers; tagged unions

#include <stdio.h>
#include <stdint.h>

uint64_t multiply1 (uint64_t a, uint64_t b)
{
        return a*b;
};

uint64_t* multiply2 (uint64_t *a, uint64_t *b)
{
        return (uint64_t*)((uint64_t)a*(uint64_t)b);
};

int main()
{
        printf ("%d\n", multiply1(123, 456));

        printf ("%d\n", (uint64_t)multiply2((uint64_t*)123, (uint64_t*)456) );
};
