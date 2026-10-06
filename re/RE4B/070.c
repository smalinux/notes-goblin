// RE4B p.416  1.28.2 Setting and clearing specific bits

int f(int a)
{
    int rt=a;

    REMOVE_BIT (rt, 0x1234);

    return rt;
};
