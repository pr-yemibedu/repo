package com.merck.fdds.servlet.html.qrySQL;

//Title:        Generic CSV result Set Output as CSV file
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
//  CSVResult result = new CSVResult(sql,con,header);


// package name needs to change when importing as part of project


import java.sql.*;

public class CSVResult {
    private String columnurl;
    private int columnnumber;
    private String sql;     // incoming SQL statement
    private Connection con;  // for Connection to ODBC/JDBC database
    private boolean header;  //  used to show table header or not
    private boolean colortable;  // for alternating color table.

    public CSVResult(String sql, Connection con, boolean header) {
      this.sql = sql;
      this.con = con;
      this.header = header;
    }

  public String toString() {
  StringBuffer strbuff = new StringBuffer();

  try {
    Statement stmt = con.createStatement();
    if (stmt.execute((sql))) {
      ResultSet rs = stmt.getResultSet();
      ResultSetMetaData rsmd = rs.getMetaData();

      int numcols = rsmd.getColumnCount();
      if (header == true) {
        // start table header with Column Names
        for (int i = 1; i <= numcols; i++) {
          if (i != numcols) {
          strbuff.append('"' + rsmd.getColumnLabel(i) + '"' + ",");
          } else {
          strbuff.append('"' + rsmd.getColumnLabel(i)+ '"' + "\n");
          }
        }
      } // for header information = true

  // table for data



      while(rs.next()) {
        for (int i = 1; i <= numcols; i++) {
           Object obj = rs.getObject(i);
           if (obj == null) {
              obj = " ";
           }
           if (i != numcols) {
                  strbuff.append('"' + obj.toString().trim() + '"' + ",");
           } else {
                  strbuff.append('"' + obj.toString().trim() + '"' + "\n");
           } // if obj
         }  //for
      }  // while
      // end of table
     }
 }
 catch (SQLException e) {
    strbuff.append("ERROR: " + e.getMessage() + "\n");
  } // for catch

 // returns stringbuffer.

 return strbuff.toString();

 }
}  //for public class
