// RE4B p.494  1.31 The classic struct bug

#include <stdio.h>

struct test
{
        int field1;
        int inserted;
        int field2;
};

void setter(struct test *t, int a, int b, int c)
{
    t->field1=a;
    t->inserted=b;
    t->field2=c;
};

void printer(struct test *t)
{
    printf ("%d\n", t->field1);
    printf ("%d\n", t->field2);
};
