// RE4B p.883  4.1.13 Arrays

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static void main(String[] args)
    {
            int[][][] a = new int[5][10][15];

            a[1][2][3]=4;

            get_elem(a);
    }

    public static int get_elem (int[][][] a)
    {
            return a[1][2][3];
    }
}
