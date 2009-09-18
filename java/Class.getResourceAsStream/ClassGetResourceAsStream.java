import java.util.Properties;
import java.io.InputStream;

public class ClassGetResourceAsStream {

    public static void main(String[] args) throws Exception {
        Properties props = new Properties();
        InputStream in =
            (new ClassGetResourceAsStream()).getClass().getResourceAsStream(
                "ClassGetResourceAsStream.props");
        props.load(in);
        System.out.println(props.getProperty("msg"));
    }
    
    class DummyClass {}
    
}
