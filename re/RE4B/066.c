// RE4B p.394  1.26.6 Multidimensional arrays

int get_element(int array[10][20][30], int x, int y, int z)
{
    return array[x][y][z];
};

int main()
{
    int array[10][20][30];

    get_element(array, 4, 5, 6);
};
