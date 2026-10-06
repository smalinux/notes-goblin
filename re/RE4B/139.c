// RE4B p.666  3.15 C99 restrict

#include <stddef.h> // added

void f2 (int* restrict x, int* restrict y, int* restrict sum, int* restrict product, int* restrict sum_product,
        int* restrict update_me, size_t s)
{
        for (int i=0; i<s; i++)
        {
                sum[i]=x[i]+y[i];
                product[i]=x[i]*y[i];
                update_me[i]=i*123; // some dummy value
                sum_product[i]=sum[i]+product[i];
        };
};
