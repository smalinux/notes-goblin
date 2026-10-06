// RE4B p.870  4.1.10 Bitfields

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static int set (int a, int b)
    {
            return a | 1<<b;
    }

    public static int clear (int a, int b)
    {
            return a & (~(1<<b));
    }
}
