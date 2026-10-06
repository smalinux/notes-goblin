// RE4B p.812  3.26 memmove() and memcpy()

#include <stddef.h> // added

void *memmove(void *dest, const void *src, size_t n)
{
        int eax, ecx, esi, edi;
        __asm__ __volatile__(
                "       movl    %%eax, %%edi\n"
                "       cmpl    %%esi, %%eax\n"
                "       je      2f\n" /* (optional) src == dest -> NOP */
                "       jb      1f\n" /* src > dest -> simple copy */
                "       leal    -1(%%esi,%%ecx), %%esi\n"
                "       leal    -1(%%eax,%%ecx), %%edi\n"
                "       std\n"
                "1:     rep; movsb\n"
                "       cld\n"
                "2:\n"
                : "=&c" (ecx), "=&S" (esi), "=&a" (eax), "=&D" (edi)
                : "0" (n), "1" (src), "2" (dest)
                : "memory"
        );
        return (void*)eax;
}
