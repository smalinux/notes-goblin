// RE4B p.794  3.23.8 Pointer to a function: a common bug (or typo)

int expired()
{
    // check license key, current date/time, etc
};

int main()
{
    if (expired) // must be expired() here
    {
        print ("expired\n");
        exit(0);
    }
    else
    {
        // do something
    };
};
