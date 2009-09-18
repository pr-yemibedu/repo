using System;
using System.Data;
using System.Data.SqlClient;

namespace SimpleExamples
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	class Class1
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main(string[] args)
		{
			RunDataReader();
			RunDataSet();
			Console.Read(); // hold console open
		}

		static SqlConnection Connection
		{
			get
			{
				return new SqlConnection("server=(local);Trusted_Connection=yes;database=northwind");
			}
		}

		static void RunDataReader()
		{
			SqlConnection con = Connection;
			SqlCommand cmd1 = new SqlCommand("SELECT * FROM CUSTOMERS", con);

			try
			{
				con.Open();
				SqlDataReader reader = cmd1.ExecuteReader();
				while(reader.Read())
				{
					for(int i = 0; i < reader.FieldCount; i++)
					{
						Console.Write(reader[i].ToString() + ",");
					}
					Console.WriteLine("");
				}
			}
			catch(Exception e)
			{
				Console.WriteLine(e.ToString());
			}
			finally
			{
				con.Close();
			}
		}

		static void RunDataSet()
		{
			SqlConnection con = Connection;
			SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT * FROM REGION", con);
			SqlParameter param = new SqlParameter();

			// build INSERT command
			dataAdapter.InsertCommand = new SqlCommand("Insert into Region (RegionID, RegionDescription) VALUES (@RegionID, @RegionDescription)", con);

			param = dataAdapter.InsertCommand.Parameters.Add("@RegionID", SqlDbType.Int);
			param.SourceColumn = "RegionID";
			param.SourceVersion = DataRowVersion.Current;

			param = dataAdapter.InsertCommand.Parameters.Add("@RegionDescription", SqlDbType.NChar, 50);
			param.SourceVersion = DataRowVersion.Current;
			param.SourceColumn = "RegionDescription";
			
			// build UPDATE command
			dataAdapter.UpdateCommand = new SqlCommand("Update Region Set RegionDescription = @RegionDescription WHERE RegionID = @RegionID" , con);

			param = dataAdapter.UpdateCommand.Parameters.Add("@RegionID", SqlDbType.Int);
			param.SourceColumn = "RegionID";
			param.SourceVersion = DataRowVersion.Original;

			param = dataAdapter.UpdateCommand.Parameters.Add("@RegionDescription", SqlDbType.NChar, 50);
			param.SourceVersion = DataRowVersion.Current;
			param.SourceColumn = "RegionDescription";

			// build DELETE command
			dataAdapter.DeleteCommand = new SqlCommand("DELETE FROM Region WHERE RegionID = @RegionID" , con);

			param = dataAdapter.DeleteCommand.Parameters.Add("@RegionID", SqlDbType.Int);
			param.SourceColumn = "RegionID";
			param.SourceVersion = DataRowVersion.Original;

			DataSet dataSet = new DataSet();
			dataAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;

			try
			{
				// display all rows
				dataAdapter.Fill(dataSet, "Region");
				DataTable dataTable = dataSet.Tables["Region"];
				foreach(DataRow dataRow in dataTable.Rows)
				{
					foreach (DataColumn dataColumn in dataTable.Columns)
					{
						Console.Write(dataRow[dataColumn] + ",");
					}
					Console.WriteLine("");
				}

				// UPDATE data
				DataRow dataRow1 = dataTable.Rows.Find(1 /* RegionID */);
				dataRow1["RegionDescription"] = "changed description"; 

				// INSERT data
				DataRow dataRow2 = dataTable.NewRow();
				dataRow2["RegionID"] = (int)Math.Abs(DateTime.Now.Ticks);
				dataRow2["RegionDescription"] = "insert description"; 
				dataTable.Rows.Add(dataRow2);

				// DELETE data
				DataRow dataRow3 = dataTable.Rows.Find(901 /* RegionID */);
				dataRow3.Delete();

				dataAdapter.Update(dataSet, "Region");
			}
			catch(Exception e)
			{
				Console.WriteLine(e.ToString());
			}
			finally
			{
				con.Close();
			}
		}
	}
}
