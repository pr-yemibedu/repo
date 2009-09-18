using System;

public class MathDelegates {
    public delegate int BinaryOperatorCallback(int a, int b);
}

public class BinaryOperator {
    public static int Add(int a, int b) { return(a + b); }
    public static int Subtract(int a, int b) { return(a - b); }
    public static int Multiply(int a, int b) { return(a * b); }
    public static int Divide(int a, int b) { return(a / b); }
}

class Test {
    public static void Main() {
        int a = 3, b = 5;
        MathDelegates.BinaryOperatorCallback binaryOperator = 
            new MathDelegates.BinaryOperatorCallback(BinaryOperator.Add);
        Console.WriteLine("{0}+{1}={2}", a, b, applyBinaryOperator(binaryOperator, a, b));
    }
    
    private static int applyBinaryOperator(MathDelegates.BinaryOperatorCallback op, int a, int b) {
        return(op(a, b));
    }
}