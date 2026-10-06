// RE4B p.953  6.2 Thread Local Storage

#include <iostream>
#include <thread>

thread_local int tmp=3;

int main()
{
        std::cout << tmp << std::endl;
};
