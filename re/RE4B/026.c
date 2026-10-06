// RE4B p.168  1.16.1 Returning values

void main()
{
    // now variables are local in this function:
    int sum, product;

    f1(123, 456, &sum, &product);
    printf ("sum=%d, product=%d\n", sum, product);
};
