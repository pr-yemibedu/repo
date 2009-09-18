import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.dom.DOMSource; 
import javax.xml.transform.stream.StreamResult; 
import java.io.OutputStream;

public class BuildDOM {
    public static void main(String[] args) {
	Document doc = null;
	doc = buildDocument();
	displayDocument(doc, System.out);
    }

    private static Document buildDocument() {
	Document doc = null;
	DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
    	try {
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    doc = builder.newDocument();  
	    Element root = (Element)doc.createElement("Root"); 
	    doc.appendChild(root);
	    Element e = doc.createElement("a");
	    root.appendChild(e);
	    e.appendChild(doc.createTextNode("TextNode"));
	    doc.getDocumentElement().normalize();
	} catch (Exception e) {
	    e.printStackTrace();
	}
	return doc;
    }

    private static void displayDocument(Document doc, OutputStream out) {
	try {
	    TransformerFactory factory = TransformerFactory.newInstance();
	    Transformer transformer = factory.newTransformer();
	    DOMSource source = new DOMSource(doc);
	    StreamResult result = new StreamResult(out);
	    transformer.transform(source, result);
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }
}
