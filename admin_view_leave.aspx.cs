﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Welgate_Organic_Fiesta
{
    public partial class admin_view_leave : System.Web.UI.Page
    {
        String connectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
        SqlConnection conn;
        String query = "";
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            query = "select * from empleavetbl";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();

            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("admin_message.aspx");
        }

    }
}

       