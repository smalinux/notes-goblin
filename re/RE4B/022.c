// RE4B p.160  1.15.2 What if we do not use the function result?

int f()
{
    // skip first 3 random values:
    rand();
    rand();
    rand();
    // and use 4th:
    return rand();
};
