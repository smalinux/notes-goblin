// RE4B p.871  4.1.10 Bitfields

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static long lset (long a, int b)
    {
            return a | 1<<b;
    }

    public static long lclear (long a, int b)
    {
            return a & (~(1<<b));
    }
}
