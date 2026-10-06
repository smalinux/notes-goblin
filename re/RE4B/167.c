// RE4B p.801  3.25.1 Sometimes a C structure can be used instead of array

#include <stdio.h>

int mean(int *a, int len)
{
        int sum=0;
        for (int i=0; i<len; i++)
                sum=sum+a[i];
        return sum/len;
};

struct five_ints
{
        int a0;
        int a1;
        int a2;
        int a3;
        int a4;
};
int main()
{
        struct five_ints a;
        a.a0=123;
        a.a1=456;
        a.a2=789;
        a.a3=10;
        a.a4=100;
        printf ("%d\n", mean(&a, 5));
        // test: https://www.wolframalpha.com/input/?i=mean(123,456,789,10,100)
};
