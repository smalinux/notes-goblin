// RE4B p.880  4.1.13 Arrays

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static void f(int... values)
    {
            for (int i=0; i<values.length; i++)
                    System.out.println(values[i]);
    }

    public static void main(String[] args)
    {
            f (1,2,3,4,5);
    }
}
