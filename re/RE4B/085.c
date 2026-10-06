// RE4B p.493  1.31 The classic struct bug

#include <stdio.h>

struct test
{
        int field1;
        int field2;
};

void setter(struct test *t, int a, int b)
{
    t->field1=a;
    t->field2=b;
};

void printer(struct test *t)
{
    printf ("%d\n", t->field1);
    printf ("%d\n", t->field2);
};
