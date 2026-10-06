// RE4B p.714  3.21.1 Classes

#include <stdio.h>

class box
{
    private:
        int color, width, height, depth;
    public:
        box(int color, int width, int height, int depth)
        {
            this->color=color;
            this->width=width;
            this->height=height;
            this->depth=depth;
        };
        void dump()
        {

            printf ("this is a box. color=%d, width=%d, height=%d, depth=%d \n", color, width, height, depth);
        };
};

void hack_oop_encapsulation(class box * o)
{
    unsigned int *ptr_to_object=reinterpret_cast<unsigned int*>(o);
    ptr_to_object[1]=123;
};

int main()
{
    box b(1, 10, 20, 30);
    b.dump();

    hack_oop_encapsulation(&b);

    b.dump();

    return 0;
};
