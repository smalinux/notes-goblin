// RE4B p.655  3.14.1 Strings and memory functions

// added
#include <stdbool.h>
#include <string.h>
#include <assert.h>

bool is_bool (char *s)
{
    if (strcmp (s, "true")==0)
        return true;
    if (strcmp (s, "false")==0)
        return false;

    assert(0);
};
