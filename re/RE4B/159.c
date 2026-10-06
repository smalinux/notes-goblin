// RE4B p.790  3.23.4 Null pointers

int reset()
{
        void (*foo)(void) = 0;
        foo();
};
