using System;
using System.IO;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;

namespace DataAccessApplicationBlockExample
{
    public class AppRunner
    {
        public static void Main()
        {
            Console.WriteLine("Enter query for Northwind database: ");
            Console.WriteLine("e.g. SELECT * FROM CUSTOMERS");
            string sqlCommand = Console.ReadLine();
            Database db = DatabaseFactory.CreateDatabase();
            DBCommandWrapper dbCommandWrapper = db.GetSqlStringCommandWrapper(sqlCommand);
            DataSet myDataSet = db.ExecuteDataSet( dbCommandWrapper );

            // For each table in the DataSet, print the row values.
            foreach( DataTable myTable in myDataSet.Tables )
            {
                foreach( DataRow myRow in myTable.Rows )
                {
                    foreach (DataColumn myColumn in myTable.Columns)
                    {
                        Console.Write(myRow[myColumn] + ", ");
                    }
                    Console.WriteLine("");
                }
            }

            string sqlStoredProcedureCommand = "CustOrdersDetail";
            dbCommandWrapper = db.GetStoredProcCommandWrapper(sqlStoredProcedureCommand);
            dbCommandWrapper.AddInParameter("@OrderID", DbType.Int32, 10248);
            myDataSet = db.ExecuteDataSet( dbCommandWrapper );
             // For each table in the DataSet, print the row values.
            foreach( DataTable myTable in myDataSet.Tables )
            {
                foreach( DataRow myRow in myTable.Rows )
                {
                    foreach (DataColumn myColumn in myTable.Columns)
                    {
                        Console.Write(myRow[myColumn] + ", ");
                    }
                    Console.WriteLine("");
                }
            }     
            Console.Read();       
        }
    }
}
