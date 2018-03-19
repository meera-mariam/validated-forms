//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Data;
//using System.Configuration;

//namespace Welgate_Organic_Projects
//{
//    public partial class SalesInv : System.Web.UI.Page
//    {


//        SqlConnection con = new SqlConnection();
//        DataTable dt = new DataTable();
//        string str;
//        DataRow dr = null;


//        public string Size;
//        public string Quantity;
//        public string Unit_Price;
//        public string Total;
//        //Double Unit_Price = 0.0;
//        Double Tax = 0.0;
//        //Double Total = 0.0;
//        Double total = 0.0;
//        Double cgst;
//        Double sgst;

//        SqlCommand cmd;
//        String ID = "";

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
//            if (!IsPostBack)
//            {
//                con.Open();
//                string com = "select Pname,Size,Sgst,Cgst,Unit_Price,Tax_Amnt from product_details_tbl";
//                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
//                DataTable dt = new DataTable();
//                adpt.Fill(dt);


//                con.Close();
//                SetInitialRow();

//                GenerateAutoID();



//            }

//            DateTime dNow = DateTime.Now;

//            txtdate.Text = (dNow.ToString("yyyy-MM-dd"));

//        }

//        public void getcon()
//        {
//            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
//            con.Open();
//        }


//        public void GenerateAutoID()
//        {
//            getcon();
//            string str = "select count(Bill_No)from Bill_Sale";
//            SqlCommand cmd = new SqlCommand(str, con);
//            int i = Convert.ToInt32(cmd.ExecuteScalar());


//            con.Close();
//            i++;
//            lblbillno.Text = ID + i.ToString();
//        }

//        public void SetInitialRow()
//        {
//            DataTable dt = new DataTable();
//            DataRow dr = null;
           
//            dt.Columns.Add(new DataColumn("Item Name", typeof(string)));
//            dt.Columns.Add(new DataColumn("Size", typeof(string)));
//            dt.Columns.Add(new DataColumn("Quantity", typeof(int)));

//            dt.Columns.Add(new DataColumn("Unit_Price", typeof(int)));
//            dt.Columns.Add(new DataColumn("Total", typeof(int)));

//            dr = dt.NewRow();
           
//            dr["Item Name"] = string.Empty;
//            dr["Size"] = string.Empty;
//            dr["Quantity"] = string.Empty;

//            dr["Unit_Price"] = string.Empty;
//            dr["Total"] = string.Empty;

//            dt.Rows.Add(dr);
//            ViewState["CurrentTable"] = dt;
//            GridView1.DataSource = dt;
//            GridView1.DataBind();






//        }

//        private void SetPreviousData()
//        {
//            int rowIndex = 0;
//            if (ViewState["CurrentTable"] != null)
//            {
//                DataTable dt = (DataTable)ViewState["CurrentTable"];
//                if (dt.Rows.Count > 0)
//                {
//                    for (int i = 1; i < dt.Rows.Count; i++)
//                    {
//                        TextBox box1 = (TextBox)GridView1.Rows[rowIndex].Cells[1].FindControl("txtsize");
//                        TextBox box2 = (TextBox)GridView1.Rows[rowIndex].Cells[2].FindControl("txtqty");
//                        //TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("txtsgst");
//                        //TextBox box4 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txtcgst");
//                        //TextBox box5 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txttax");
//                        TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txtunit_price");
//                        TextBox box4 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txttotal");
//                        box1.Text = dt.Rows[i]["Size"].ToString();
//                        box2.Text = dt.Rows[i]["Quantity"].ToString();
//                        //box3.Text = dt.Rows[i]["Sgst"].ToString();
//                        //box4.Text = dt.Rows[i]["Cgst"].ToString();
//                        //box5.Text = dt.Rows[i]["Tax"].ToString();
//                        box3.Text = dt.Rows[i]["Unit_Price"].ToString();
//                        box4.Text = dt.Rows[i]["Total"].ToString();

//                        rowIndex++;

//                    }
//                }
//            }

//        }

//        private void AddNewRowToGrid()
//        {
//            int rowIndex = 0;

//            if (ViewState["CurrentTable"] != null)
//            {
//                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
//                DataRow drCurrentRow = null;
//                if (dtCurrentTable.Rows.Count > 0)
//                {
//                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
//                    {
//                        //extract the TextBox values
//                        TextBox box1 = (TextBox)GridView1.Rows[rowIndex].Cells[1].FindControl("txtsize");

//                        TextBox box2 = (TextBox)GridView1.Rows[rowIndex].Cells[2].FindControl("txtqty");
//                        //TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[3].FindControl("txtsgst");
//                        //TextBox box4 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txtcgst");
//                        //TextBox box5 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txttax");
//                        TextBox box3 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txtunit_price");
//                        TextBox box4 = (TextBox)GridView1.Rows[rowIndex].Cells[4].FindControl("txttotal");
//                        drCurrentRow = dtCurrentTable.NewRow();
//                        //drCurrentRow["Item No"] = i + 1;
//                        drCurrentRow["Size"] = box1.Text;

//                        drCurrentRow["Quantity"] = box2.Text;
//                        //drCurrentRow["SGST"] = box3.Text;
//                        //drCurrentRow["CGST"] = box4.Text;
//                        //drCurrentRow["TAX"] = box5.Text;
//                        drCurrentRow["Unit_Price"] = box3.Text;
//                        drCurrentRow["Total"] = box4.Text;
//                        rowIndex++;
//                    }
//                    dtCurrentTable.Rows.Add(drCurrentRow);
//                    ViewState["CurrentTable"] = dtCurrentTable;
//                    GridView1.DataSource = dtCurrentTable;
//                    GridView1.DataBind();
//                    //GridView1.DataSource = dtCurrentTable;
//                    // GridView1.DataBind();
//                }
//            }
//            else
//            {
//                Response.Write("ViewState is null");
//            }
//            SetPreviousData();

//        }

//        protected void dropdown_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            GridViewRow Gridview1 = (GridViewRow)((Control)sender).NamingContainer;
//            DropDownList dropdown = (DropDownList)Gridview1.FindControl("ddl1");
//            TextBox txtsize = (TextBox)Gridview1.FindControl("txtsize");
//            //TextBox txtsgst = (TextBox)Gridview1.FindControl("txtsgst");
//            //TextBox txtcgst = (TextBox)Gridview1.FindControl("txtcgst");
//            //TextBox txttax = (TextBox)Gridview1.FindControl("txttax");
//            TextBox txtunit_price = (TextBox)Gridview1.FindControl("txtunit_price");



//            con.Open();
//            SqlCommand sql = new SqlCommand("select Size,Unit_Price from product_details_tbl where Pname='" + dropdown.SelectedItem.Text + "'", con);
//            SqlDataAdapter adpt = new SqlDataAdapter(sql);
//            DataTable dt = new DataTable();
//            DataSet ds = new DataSet();
//            adpt.Fill(dt);
//            txtsize.Text = dt.Rows[0][0].ToString();

//            txtunit_price.Text = dt.Rows[0][1].ToString();

//            con.Close();
//        }



//        protected void Gridview1_RowDataBound(object sender, GridViewRowEventArgs e)
//        {
//            if (e.Row.RowType == DataControlRowType.DataRow)
//            {
//                con.Open();
//                DropDownList ddl1Pname = (e.Row.FindControl("ddl1") as DropDownList);
//                SqlCommand cmd = new SqlCommand("select * from product_details_tbl", con);
//                SqlDataAdapter sda = new SqlDataAdapter(cmd);
//                DataTable dt = new DataTable();
//                sda.Fill(dt);
//                ddl1Pname.DataSource = dt;

//                ddl1Pname.DataTextField = "Pname";
//                ddl1Pname.DataValueField = "Size";
//                ddl1Pname.DataBind();
//                con.Close();
//                ddl1Pname.Items.Insert(0, new ListItem("--Select--", "0"));
//            }
//        }

//        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            DropDownList ddl1 = sender as DropDownList;
//            foreach (GridViewRow row in GridView1.Rows)
//            {
//                if (ddl1.ClientID == ddl1.ClientID)
//                {
//                    TextBox txt1 = row.FindControl("txtsize") as TextBox;
//                    TextBox txt2 = row.FindControl("txtqty") as TextBox;
                  
//                    TextBox txt3 = row.FindControl("txtunit_price") as TextBox;
//                    TextBox txt4 = row.FindControl("txttotal") as TextBox;

//                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123");
//                    con.Open();
//                    str = "select Size,Quantity,Unit_Price from product_details_tbl where Pname='" + ddl1.SelectedItem.Text + "'";
//                    SqlCommand com = new SqlCommand();
//                    DataTable dt = new DataTable();
//                    com = new SqlCommand(str, con);
//                    SqlDataAdapter da = new SqlDataAdapter(com);
//                    da.Fill(dt);
//                    if (dt.Rows.Count > 0)
//                    {

//                        txt1.Text = dt.Rows[0][0].ToString();
//                        txt2.Text = dt.Rows[0][1].ToString();
//                        txt3.Text = dt.Rows[0][2].ToString();
//                        txt4.Text = dt.Rows[0][3].ToString();
                       

//                    }
//                    con.Close();
//                }
//            }
//        }


//        protected void btnsave_Click(object sender, EventArgs e)
//        {
//            foreach (GridViewRow row in GridView1.Rows)
//            {
//                TextBox TextBox1 = (TextBox)row.Cells[3].FindControl("txtsize");
//                Size = TextBox1.Text;
//                TextBox TextBox2 = (TextBox)row.Cells[4].FindControl("txtqty");
//                Quantity = TextBox2.Text;

//                TextBox TextBox3 = (TextBox)row.Cells[8].FindControl("txtunit_price");
//                Unit_Price = TextBox3.Text;
//                TextBox TextBox4 = (TextBox)row.Cells[9].FindControl("txttotal");
//                Total = TextBox4.Text;


//                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Welgate"].ConnectionString);
//                con.Open();
//                SqlCommand cmd = new SqlCommand("insert into Bill_Sale(Bill_No,Date,Pname,Size,Quantity,Unit_Price,Total) values('" + lblbillno + "','" + txtdate.Text + "','" + ddl1.SelectedItem.Text + "','" + txtsize.Text + "','" + txtqty.Text + "','" + txtunit_price.Text + "','" + txttotal.Text + "')");
//                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bill Generated successfully')", true);
//                cmd.Connection = con;
//                cmd.ExecuteNonQuery();
//                con.Close();

//            }
//        }

//        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
//        {

//        }

//        protected void btnaddnew_Click(object sender, EventArgs e)
//        {
//            AddNewRowToGrid();
//        }






//        protected void btncalculate_Click(object sender, EventArgs e)
//        {
//            decimal a, b, c, d, g, i, h = 0;
//            a =  Convert.ToDouble(txtqty.Text);
//            b = Convert.ToDecimal(txttotal.Text);
//            c = a * b;
//            txttotal.Text = c.ToString();
//            d = Convert.ToDecimal(txtcgst.Text);
//            //f = Convert.ToInt32(txtsgst.Text);
//            g = d / 100;
//            txtamount.Text = g.ToString();
//            i = Convert.ToDecimal(txttax.Text);
//            h = g + c + i;
//            txtamount.Text = h.ToString();
//        }


//    }
//}








