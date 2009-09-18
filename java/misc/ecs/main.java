/*
file:			main.java
author:			Brian Pfeil
date:			01.03.2001
description:	creation
*/

/* imports */
import java.util.*;
import java.sql.*;
import java.net.*;

import org.apache.ecs.xml.*;

public class main
{
	public static void main(String[] args)
	{
		XMLDocument doc = new XMLDocument();
		XML e = null;
		
		for (int i = 0; i < 10; i++)
		{
			e = new XML("number");
			e.setPrettyPrint(true);
			e.addElement(Integer.toString(i));
			doc.addElement(e);
		}
		
		doc.output(System.out);
		//System.out.println(doc.toString());
	}
}