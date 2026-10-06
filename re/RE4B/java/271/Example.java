// RE4B p.884  4.1.14 Strings

// added: class wrapper, the book shows only the method(s)
public class Example
{
    public static void main(String[] args)
    {
            System.out.println("What is your name?");
            String input = System.console().readLine();
            System.out.println("Hello, "+input);
    }
}
