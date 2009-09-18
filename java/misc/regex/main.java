import org.apache.oro.text.regex.*;

public class main
{
    // usage: java main -text "<text>" -pattern "<pattern>"
    public static void main(String[] args)
    {
        String strText = args[1];
        String strPattern = args[3];
        
        Pattern pattern   = null;
        PatternCompiler compiler;
        PatternMatcher matcher;
        
        compiler = new Perl5Compiler();
        matcher  = new Perl5Matcher();
        
        try
        {
            pattern = compiler.compile(strPattern);
        }
        catch(MalformedPatternException e)
        {
            System.err.println("Bad pattern.");
            System.err.println(e.getMessage());
            return;
        }
        
        if (matcher.matches(strText, pattern))
        {
            System.out.println(strText + " MATCHES " + strPattern);
        }
        else
        {
            System.out.println(strText + " DOES NOT MATCH " + strPattern);
        }
    }
}