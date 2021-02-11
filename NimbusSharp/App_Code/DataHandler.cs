/*==========================================================

   Data Handler Class - Helper for Data Management

       Used to keep the con string isolated to one class
       Allows basic SQL commands to be reused

                                            KJ 2021-02-08

==========================================================*/

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NimbusSharp.App_Code
{
    public static class DataHandler
    {
        static string conn = ConfigurationManager.ConnectionStrings["NimbusCon"].ConnectionString;

        //Easy get for datasets from the DB - KJ 2021-02-08
        public static DataSet GetDataset(String qry)
        {
            SqlConnection sqlCon = new SqlConnection(conn);
            SqlDataAdapter sqlCmd = new SqlDataAdapter(qry, sqlCon);
            DataSet ds = new DataSet();
            sqlCmd.Fill(ds, "Status");

            return ds;
        }

    }
}