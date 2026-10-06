// RE4B p.797  3.24.1 Weird loop optimization

#include <stddef.h> // added

void memcpy (unsigned char* dst, unsigned char* src, size_t cnt)
{
        size_t i;
        for (i=0; i<cnt; i++)
                dst[i]=src[i];
};
