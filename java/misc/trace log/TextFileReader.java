import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileNotFoundException;

public class TextFileReader extends java.io.BufferedReader
{
	protected String filePath = null;
	
	public TextFileReader(String filePath) throws java.io.FileNotFoundException
	{
		super(new FileReader(filePath));
		this.setFilePath(filePath);
	}
	
	public void setFilePath(String filePath)
	{
		this.filePath = filePath;
	}
	
	public String getFilePath()
	{
		return this.filePath;
	}
}