import com.jacob.com.*;
import com.jacob.activeX.*;

public class CreateWordDoc {
    
    public static void main(String[] args) {
        String path = args[0];
        ActiveXComponent word = new ActiveXComponent("MyTest.CreateWordDoc");
        Object wordObj = word.getObject();
        word.setProperty("Path", new Variant(path));
        Dispatch.call(wordObj, "Run");
    }
    
}