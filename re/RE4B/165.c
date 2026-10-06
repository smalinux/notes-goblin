// RE4B p.799  3.24.2 Another loop optimization

#include <stdio.h>

int a[128];

int sum_of_a()
{
        int rt=0;

        for (int i=0; i<128; i++)
                rt=rt+a[i];

        return rt;
};

int main()
{
        // initialize
        for (int i=0; i<128; i++)
                a[i]=i;

        // calculate the sum
        printf ("%d\n", sum_of_a());
};
