// RE4B p.694  3.19.3 Using bit operations

char toupper (char c)
{
    if(c>='a' && c<='z')
        return c^0x20;
    else
        return c;
}
