// RE4B p.875  4.1.13 Arrays

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static void main(String[] args)
    {
            int a[]=new int[10];
            for (int i=0; i<10; i++)
                    a[i]=i;
            dump (a);
    }

    public static void dump(int a[])
    {
            for (int i=0; i<a.length; i++)
                    System.out.println(a[i]);
    }
}
