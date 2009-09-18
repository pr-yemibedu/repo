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

import com.merck.fdds.db.*;

public class main
{
	public static void main(String[] args)
	{
		InsertStmntBuilder isb = new InsertStmntBuilder();
		
		isb.setTableName("message");
		
		isb.add(new Field("id", "number", "1"));
		isb.add(new Field("title", "string", "New Web Site"));
		isb.add(new Field("last_modified", "datetime", "01-29-2001"));
		
		System.out.println(isb.toString());
		
		String encodedString = "field_string_title";
		
		System.out.println("String: " + encodedString);
		System.out.println("Encoded Field String: " + Field.isEncodedFieldString(encodedString));
		
		if (Field.isEncodedFieldString(encodedString))
		{
			System.out.println("Field Name: " + Field.getFieldNameFromEncodedFieldString(encodedString));
			System.out.println("Field Type: " + Field.getFieldTypeFromEncodedFieldString(encodedString));
		}
		
		
	}
}