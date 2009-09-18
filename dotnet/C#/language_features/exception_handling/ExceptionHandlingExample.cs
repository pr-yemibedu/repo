using System;

public class ExceptionHandlingExample {
    static int zero = 0;
    public static void Main() {
        try {
            // force exception
            int i = 10/zero;
        } catch (Exception e) {
            Console.WriteLine("Exception: {0}", e.Message);
        } finally {
            Console.WriteLine("Executing code in \"finally\" block");
            //throw new Exception("qwerty");
        }
        
        try {
            // force exception
            if (yesItsTrue()) {
                throw new MyException("throwing MyException", new Exception(""));
            }
        } catch (MyException mye) {
            Console.WriteLine("MyException: {0}", mye.Message);
        } catch (Exception e) {
            Console.WriteLine("Exception: {0}", e.Message);
        }
    }
    
    private static bool yesItsTrue() {
        return(true);
    }
}

public class MyException : Exception {
    public MyException() {}
    public MyException(string msg) : base(msg) {}
    public MyException(string msg, Exception inner) : base(msg, inner) {}
}