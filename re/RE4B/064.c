// RE4B p.393  1.26.6 Multidimensional arrays

int get_element(int array[10][20], int x, int y)
{
    return array[x][y];
};

int main()
{
    int array[10][20];
    get_element(array, 4, 5);
};
