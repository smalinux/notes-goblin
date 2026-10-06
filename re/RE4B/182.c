// RE4B p.950  6.1.8 Taking a pointer to function argument

#include <stdio.h>

// located in some other file
void modify_a (int *a);

void f (int a)
{
    modify_a (&a);
    printf ("%d\n", a);
};
