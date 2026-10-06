// RE4B p.606  3.5 qsort() revisited

int
strcmp(const char *s1, const char *s2)
{
        while (*s1 == *s2++)
                if (*s1++ == 0)
                        return (0);
        return (*(unsigned char *)s1 - *(unsigned char *)--s2);
}
