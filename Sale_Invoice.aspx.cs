using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace My_Project
{
    public partial class Sale_Invoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd;
        String ID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
                con.Open();

             
                GenerateAutoID();
                grid();

                //getcon();
                string com = "Select Pname from product_details_tbl";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Pname";

                DropDownList1.DataBind();
                con.Close();

            }
            DateTime dNow = DateTime.Now;

            txtdate.Text = (dNow.ToString("yyyy-MM-dd"));
        }

        //public void getcon()
        //{
        //    con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
        //    con.Open();
        //}

        public void grid()
        {
            DBManager db = new DBManager();
            DataTable dt = new DataTable();
             string str = "Select Bill_No,Product,Size,Quantity,Tax_Total,Sgst,Cgst,[Gross Amount] from Sale_Bill_tbl";
             dt = db.GetDataTableInline(str);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }
      

        public void GenerateAutoID()
        {
            DBManager db = new DBManager();
            string str = "select count(Bill_No)from Sale_Bill_tbl";
            int i = Convert.ToInt32(db.ExecScaler(str));
            


            //con.Close();
            i++;
            lblbillno.Text = ID + i.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GridView1.DataSource = null;
            //GridView1.DataBind();
            //GridView1.Columns.Clear();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();

           

            //getcon();
            String Bill_No = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label8")).Text;
            string del = "delete from Sale_Bill_tbl where Bill_No=" + Bill_No;
            SqlCommand cmd = new SqlCommand(del, con);
            Response.Write("<script>alert('Data Deleted Successfully! :-)')</script>");
            cmd.ExecuteNonQuery();
            con.Close();
            grid();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            //getcon();
            //string com = "Select Size,Unit_Price,Sgst,Cgst,Tax_Amnt from product_details_tbl  where Pname='" + DropDownList1.SelectedItem.Value + "'";
            //SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //DropDownList1.DataSource = dt;
            //DropDownList1.DataTextField = "Pname";

            //DropDownList1.DataBind();

        }


       

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();

            //getcon();
            String sel = "Select Size,Unit_Price,Sgst,Cgst,Tax_Amnt from product_details_tbl  where Pname='" + DropDownList1.SelectedItem.Value + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            cmd.ExecuteNonQuery();


            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                txtsize.Text = dt.Rows[0][0].ToString();
               
                txttotal.Text = dt.Rows[0][1].ToString();
                
               // txttot.Text = dt.Rows[0][3].ToString();
                txtcgst.Text = dt.Rows[0][2].ToString();
                txtsgst.Text = dt.Rows[0][3].ToString();
                txttax.Text = dt.Rows[0][4].ToString();
               
                   }
            
           
        }

        protected void btncalculate_Click(object sender, EventArgs e)
        {
            decimal a, b, c, d, g, i, h, j = 0; 
            a = Convert.ToDecimal(txtqty.Text);
            b = Convert.ToDecimal(txttotal.Text);
            c = a * b;
            txtamount.Text = c.ToString();
            d = Convert.ToDecimal(txtcgst.Text);
            //f = Convert.ToInt32(txtsgst.Text);
            g = d / 100;
            txtgross.Text = g.ToString();
            i = Convert.ToDecimal(txttax.Text);
            h = g + c + i;
            txtgross.Text = h.ToString();
            


            //txttest.Text = h.ToString();
            //j = h + g + c + i;
            //txtgross.Text = j.ToString();
            //txtfinalamnt.Text = h.ToString();
            //t = h + t;
            //txtfinalamnt.Text = t.ToString();

            //t = Convert.ToDecimal(txttotalamount.Text);
            //t = h + h;
            //txttotalamount.Text = t.ToString();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-VHODRQT\SQLSERVER;Initial Catalog=organicdb;User ID=sa;Password=admin123";
            con.Open();


            //getcon();
            string ins = "insert into Sale_Bill_tbl(Bill_No,Product,Size,Quantity,[Gross Amount],Tax_Total,Sgst,Cgst)values('" + lblbillno.Text.Trim() + "','" + DropDownList1.SelectedItem.Text+ "','" + txtsize.Text.Trim() + "','" + txtqty.Text.Trim() + "','" + txtgross.Text.Trim() + "','" + txttax.Text.Trim() + "','" + txtsgst.Text.Trim() + "','" + txtcgst.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data Added Successfully! :-)')</script>");
            String select = "select * from Sale_Bill_tbl";
            cmd = new SqlCommand(select, con);
            cmd.ExecuteNonQuery();


            //Response.Write("success");
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

            lblbillno.Text = "";
            DropDownList1.SelectedItem.Text = "";
            txtsize.Text = "";
            txtqty.Text = "";

            txtgross.Text = "";
            txttax.Text = "";

            txtsgst.Text = "";
            txtcgst.Text = "";

            //Response.Write("<script LANGUAGE='Javascript'>alert('Saved Successfully')</script");


        }

        //protected void btnclear_Click(object sender, EventArgs e)
        //{
        //    lblbillno.Text = "";
        //    txtname.Text = "";
        //    txtsize.Text = "";
        //    txtqty.Text = "";

        //    txtgross.Text = "";
        //    txttax.Text = "";

        //    txtsgst.Text = "";
        //    txtcgst.Text = "";

        //    GridView1.DataSource = null;
        //    GridView1.DataBind();
        //    GridView1.Columns.Clear();


        //}

        protected void btnaddnew_Click(object sender, EventArgs e)
        {

            GridView1.DataSource = null;
            GridView1.DataBind();
            //lblbillno.Text = "";
            DropDownList1.SelectedItem.Text = "";
            txttotal.Text = "";
            txtsize.Text = "";
            txtqty.Text = "";
            txtamount.Text = "";

            txtgross.Text = "";
            txttax.Text = "";

            txtsgst.Text = "";
            txtcgst.Text = "";
        }

      
       

        }
    }
