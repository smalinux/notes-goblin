// RE4B p.382  1.26.5 Array of pointers to strings

#include <assert.h> // added

#include <stdio.h>

const char* month1[]=
{
    "January", "February", "March", "April",
    "May", "June", "July", "August",
    "September", "October", "November", "December"
};

// in 0..11 range
const char* get_month1 (int month)
{
    return month1[month];
};

const char* get_month1_checked (int month)
{
    assert (month<12);
    return month1[month];
};
