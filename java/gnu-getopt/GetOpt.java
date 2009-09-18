import gnu.getopt.*;

public class GetOpt {
    public static void main(String[] argv) {
        Getopt opt = new Getopt("GetOpt", argv, "i:o:abcd");
        int c;
        while ((c = opt.getopt()) != -1) {
            switch (c) {
                case 'i':
                    System.out.println("input file is " + opt.getOptarg());
                break;
                
                case 'o':
                    System.out.println("output file is " + opt.getOptarg());
                break;
                
                default:
                    System.out.println("getopt returned " + (char)c);
            }
            
        }
        
    }
}
