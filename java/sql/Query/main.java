/*
file:			main.java
author:			Brian Pfeil
date:			01.21.2001
description:	creation
*/

/* imports */
import java.util.*;
import java.sql.*;
import java.net.*;

import com.merck.fdds.db.*;

public class main
{
	public static void main(String[] args) throws Exception
	{
		ConnectionPool pool =
			new ConnectionPool(	"jdbc:JTurbo://cn336241-a/PortalData",
								"messenger",
								"password",
								"com.ashna.jturbo.driver.Driver",
								1,
								1);
		Connection con = pool.getConnection();
		
		String statement = "select * from message where target_group = 'manager'";
		ResultSet rs = Query.execute(con, statement);
		
		if (rs != null)
		{
			System.out.println(Query.toString(rs));
		}								
	}
	
}