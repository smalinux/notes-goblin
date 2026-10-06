// RE4B p.404  1.28.1 Specific bit checking

#include <stdio.h>
#include <fcntl.h>

void main()
{
        int handle;

        handle=open ("file", O_RDWR | O_CREAT, 0644); // fixed: mode needed by -O2 fortify
};
