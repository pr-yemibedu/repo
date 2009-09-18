// test comment for subversion
public class BinaryUtils {
    
    public static long binaryStringToLong(String binaryString) {
        long result = 0;
        String binaryStringReversed = reverse(binaryString);
        for (int i = 0; i < binaryStringReversed.length(); i++) {
            result += (binaryStringReversed.charAt(i) == '1') ?
                        (long)Math.pow((double)2, (double)i) : 0;
        }
        return(result); 
    }
    
    public static String longToBinaryString(long l) {
        String binaryString = "";
        while (l != 0) {
            binaryString += hasRemainer(l, 2) ? "1" : "0";
            l = l/2;
        }
        return(reverse(binaryString));
    }
    
    public static boolean isBitSet(long num, long pos) {
        String binaryString = longToBinaryString(num);
        String binaryStringReversed = reverse(binaryString);
        // pos is out of bounds
        if (pos > (binaryStringReversed.length() - 1)) {
            return false;
        }
        return(binaryStringReversed.charAt((int)pos) == '1');
    }
    
    private static boolean hasRemainer(long a, long b) {
        return((a%b) > 0);
    }
    
    private static boolean has2consecutiveBits(long num) {
        String binaryString = longToBinaryString(num);
        for (int i = 0; i < (binaryString.length() - 1); i++) {
            if (isBitSet(num, i) && isBitSet(num, i + 1)) {
                return true;
            }
        }
        return false;
    }
    
    private static String reverse(String s) {
        String reversed = "";
        for (int i = s.length() - 1; i >= 0; i--) {
            reversed += s.charAt(i);
        }
        return(reversed);
    }
    
    public static void powerset(char[] a, long size) {
        System.out.print("{");
        for (long i = 0; i < (long)Math.pow((double)2, (double)size); i++) {
            System.out.print("{");
            for (long j = 0; j < size; j++) {
                if (isBitSet(i,j)) {
                    System.out.print(a[(int)j]);
                }
            }
            System.out.print("}");
        }
        System.out.print("}");
    }
    
    public static void main(String[] argv) {
        long num = long.parseLong(argv[0]);
        String binaryString;
        System.out.println("longToBinaryString(" + num + ")=" + (binaryString = longToBinaryString(num)));
        System.out.println("binaryStringToLong(\"" + binaryString + "\")=" + binaryStringToLong(binaryString));
        System.out.println("isBitSet(" + num + ", 2)=" + isBitSet(num, 2));
        System.out.println("has2consecutiveBits(" + num + ")=" + has2consecutiveBits(num));
        char[] a = {'a','b','c'};
        powerset(a, 3);
    }
}
