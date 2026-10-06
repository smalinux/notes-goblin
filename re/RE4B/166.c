// RE4B p.800  3.24.2 Another loop optimization

int a[128]; // added: global array from the previous listing

int sum_of_a_v2()
{
        int *tmp=a;
        int rt=0;

        do
        {
                rt=rt+(*tmp);
                tmp++;
        }
        while (tmp<(a+128));

        return rt;
};
