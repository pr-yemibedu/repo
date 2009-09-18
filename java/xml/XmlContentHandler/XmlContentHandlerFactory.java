import java.net.*;

public class XmlContentHandlerFactory implements ContentHandlerFactory
{    
    public static XmlContentHandlerFactory getInstance()
    {
        return new XmlContentHandlerFactory();
    }
    
    public ContentHandler createContentHandler(String mimeType)
    {
        return new XmlContentHandler();
    }
}