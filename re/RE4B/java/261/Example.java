// RE4B p.874  4.1.12 switch()

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static void f(int a)
    {
            switch (a)
            {
            case 0: System.out.println("zero"); break;
            case 1: System.out.println("one\n"); break;
            case 2: System.out.println("two\n"); break;
            case 3: System.out.println("three\n"); break;
            case 4: System.out.println("four\n"); break;
            default: System.out.println("something unknown\n"); break;
            };
    }
}
