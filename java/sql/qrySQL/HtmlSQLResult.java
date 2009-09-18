package com.merck.fdds.servlet.html.qrySQL;

//Title:        Generic HTML result Set Output to HTML
//Version:      1.0
//Copyright:    Copyright (c) 1998
//Author:       William Mantz
//Company:      Merck
// Takes SQL statement as Parameter
//       Con  connection to DB
//       header  as boolean true or false to show table header
//
//  outputs  HTML table with alternating blue / white background
//
//  How to call?  Use the following code and define
//  sql  as string,   con as connection,  header as boolean true/false
//
//  HtmlSqlResult result = new HtmlSqlResult(sql,con,header);


// package name needs to change when importing as part of project


import java.sql.*;

public class HtmlSqlResult {
    private String columnurl;
    private int columnnumber;
    private int rownumber;
    private String sql;     // incoming SQL statement
    private Connection con;  // for Connection to ODBC/JDBC database
    private boolean header;  //  used to show table header or not
    private boolean colortable;  // for alternating color table.

    public HtmlSqlResult(String sql, Connection con, boolean header, boolean colortable, String columnurl, int columnnumber) {
      this.sql = sql;
      this.con = con;
      this.header = header;
      this.colortable = colortable;
      this.columnurl = columnurl;
      this.columnnumber = columnnumber;
    }

    // ADDED Support for no Rows by adding -1 as columnnumber, if -1, then no row count.

  public String toString() {
  StringBuffer strbuff = new StringBuffer();
  // debug information
  //  strbuff.append("SQL Request: " + sql);

  //  next section creates Table header

  try {
    Statement stmt = con.createStatement();
    if (stmt.execute((sql))) {
      ResultSet rs = stmt.getResultSet();
      strbuff.append("<TABLE border=1 BGCOLOR=#ffffff cellspacing=0>\n");

      ResultSetMetaData rsmd = rs.getMetaData();

      int numcols = rsmd.getColumnCount();
      if (header == true) {
        // start table header with Column Names
        strbuff.append("<THEAD>\n<TR>");
        for (int i = 1; i <= numcols; i++) {
          strbuff.append("<TH BGCOLOR=#c0c0c0 BORDERCOLOR=#000000><FONT SIZE=2 FACE=\"Arial\" COLOR=#000000>" + rsmd.getColumnLabel(i) +"</FONT></TH>\n");
        }
        strbuff.append("</TR></thead>\n");
      } // for header information = true

  // table for data
      String bluecolor = "#F0F0F0";
      String whitecolor = "#ffffff";
      String currcolor = "whitecolor";
      if (colortable == false) bluecolor="#ffffff"; //  this makes tabel bg white if picked.


      boolean togglesw = true;
      rownumber= 0;
      while(rs.next()) {
        strbuff.append("<TR>");
        rownumber = rownumber + 1;
        if (togglesw == true) {
          togglesw = false;
          currcolor = bluecolor;

        }  else {
          togglesw = true;
          currcolor = whitecolor;
        }  // if else

        for (int i = 1; i <= numcols; i++) {
           Object obj = rs.getObject(i);
           if (obj != null) {
           if (i == columnnumber) {
                 strbuff.append("<TD bgcolor=" + currcolor + " BORDERCOLOR=#000000><FONT SIZE=2 FACE=\"Arial\" COLOR=#000000><a href=" + '"'+ columnurl + obj.toString() + '"' + "><B>" + obj.toString() + "</a><BR></FONT></TD>\n");
             }
             else
                  strbuff.append("<TD bgcolor=" + currcolor + " BORDERCOLOR=#000000><FONT SIZE=2 FACE=\"Arial\" COLOR=#000000>" + obj.toString() + "<a/><BR></FONT></TD>\n");
             }
           else
             strbuff.append("<TD bgcolor=" + currcolor + " BORDERCOLOR=#000000>&nbsp;</td>");
        }  //for
       strbuff.append("</TR>\n");

     }  // while
      // end of table
     strbuff.append("</TABLE>\n");
     if (columnnumber != -1) strbuff.append("Total Rows: " + rownumber);
    }
 }
 catch (SQLException e) {
    strbuff.append("</TABLE>\n <H1>ERROR: " + e.getMessage() + "</H1>\n");
  } // for catch


  //  This is what returns the completely built HTML page back to the calling class

 return strbuff.toString();

 }
}  //for public class


