// RE4B p.389  1.26.6 Multidimensional arrays

#include <stdio.h>

int a[10][20][30];

void insert(int x, int y, int z, int value)
{
    a[x][y][z]=value;
};
