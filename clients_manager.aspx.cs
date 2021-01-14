using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using Xceed.Wpf.Toolkit;

namespace Clients_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0PAGHK2;Initial Catalog=client;Integrated Security=True");
        SqlDataAdapter adpt;
        DataSet ds;
        DataTable dt;
        
        

        public void Page_Load(object sender, EventArgs e)
        {


            //con = new SqlConnection(@"Data Source=DESKTOP-0PAGHK2;Initial Catalog=client;Integrated Security=True");

            SqlCommand com = new SqlCommand("SELECT * FROM clients", con);
            
            adpt = new SqlDataAdapter(com);
            ds = new DataSet();
            dt = new DataTable();
            adpt.Fill(ds);
            dt = ds.Tables[0];
            com.CommandType = CommandType.Text;
            SqlCommandBuilder sb = new SqlCommandBuilder(adpt);
            dt.PrimaryKey = new DataColumn[] { dt.Columns[0] };
            GridView2.DataSource = dt;
            GridView2.DataBind();




            //StringBuilder table = new StringBuilder();





            //table.Append("<table border=1>");
            //table.Append("<th>");
            //foreach (DataColumn column in dt.Columns)
            //{

            //    table.Append("<th>");
            //    table.Append(column.ColumnName.ToUpper());
            //    table.Append("</th>");
            //}

            //table.Append("</th>");

            //foreach (DataRow row in dt.Rows)
            //{
            //    table.Append("<tr>");
            //    foreach (DataColumn column in dt.Columns)
            //    {

            //        table.Append("<th>");
            //        table.Append(row[column.ColumnName].ToString());
            //        table.Append("</th>");
            //    }
            //    table.Append("</tr>");
            //}
            //table.Append("</table>");
            //Panel1.Controls.Add(new Label { Text = table.ToString() });



        }

        

        public void Clear()
        {
            

            
            txtID.Text = "";
            txtName.Text = "";
            txtlName.Text = "";
            txtAdresse.Text = "";
            txtcity.Text = "";
            txtID.Focus();

        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            //var idInput = Request.Form["idInput"];
            //var fnInput = Request.Form["fnInput"];
            //var lnInput = Request.Form["lnInput"];
            //var addressInput = Request.Form["addressInput"];
            //var cityInput = Request.Form["cityInput"];

            //SqlCommand com = new SqlCommand("insert into clients values('idInput', 'fnInput', 'lnInput', 'addressInput', 'cityInput')", con);
            SqlCommand com = new SqlCommand("insert into clients values('"+ txtID.Text + "', '" + txtName.Text + "', '" + txtlName.Text + "', '"+ txtAdresse.Text + "', '"+ txtcity.Text + "')", con);
            con.Open();
            com.ExecuteNonQuery();
            Response.Write("Client Information Saved Successfully");
            
            Clear();
            Page_Load(sender, e);
            con.Close();
            //DataRow dr = dt.NewRow();
            //dr["id"] = txtID.Text;
            //dr["firstName"] = txtName.Text;
            //dr["lastName"] = txtlName.Text;
            //dr["address"] = txtAdresse.Text;
            //dr["city"] = txtcity.Text;

            //dt.Rows.Add(dr);
            //adpt.Update(dt);

        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            //con = new SqlConnection(@"Data Source=DESKTOP-0PAGHK2;Initial Catalog=client;Integrated Security=True");
            //SqlCommand com = new SqlCommand(@"UPDATE[dbo].[clients]
            //   SET[id] = '"+txtID.Text+"',[firstName] = '"+txtName.Text +"',[lastName] = '"+txtlName.Text+",[address] = '"+txtAdresse.Text+"',[city] = '"+txtcity.Text+"'
            //  WHERE < Search Conditions,,> ('" + txtID.Text + "', '" + txtName.Text + "', '" + txtlName.Text + "', '" + txtAdresse.Text + "', '" + txtcity.Text + "')", con);
            SqlCommand com = new SqlCommand("update clients SET[firstName] = '" + txtName.Text + "',[lastName] = '" + txtlName.Text + "',[address] = '" + txtAdresse.Text + "',[city] ='" + txtcity.Text + "' where [id]='" + txtID.Text + "'", con);

            con.Open();
            com.ExecuteNonQuery();
            Response.Write("Client Information Updated Successfully");
            Clear();
            Page_Load(sender, e);
            con.Close();
            

        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            //con = new SqlConnection(@"Data Source=DESKTOP-0PAGHK2;Initial Catalog=client;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("delete from clients where [id]='" + txtID.Text + "'", con);
            try
            {
                com.ExecuteNonQuery();
                Response.Write("Client Information has been deleted");
                Clear();
                Page_Load(sender, e);
                
            }
            catch (Exception x)
            {
                Response.Write("Client Information not deleted" + x.Message);
            }
            finally
            {

                con.Close();
                Clear();
                
            }
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("SELECT * FROM clients where city like '" + txtcity.Text + "%'", con);
            adpt = new SqlDataAdapter(com);
            ds = new DataSet();
            adpt.Fill(ds);
            DataView dv = dt.DefaultView;

            //DataRow dr = dt.Rows.Find(txtcity.Text);
            //SqlDataAdapter adpt;
            //DataSet ds;
            //DataTable dt;
            //DataView dv = new DataView(ds.Tables["clients"]);
            dv.RowFilter = "city like '" + txtcity.Text + "%' ";
            try
            {
                //if (dv.Table.Rows.Count > 0)
                //{
                   GridView2.DataSource = dv.ToTable();
                   GridView2.DataBind();
                
                //}
                //txtID.Text = dr["id"].ToString();
                //txtName.Text = dr["firstName"].ToString();
                //txtlName.Text = dr["lastName"].ToString();
                //txtAdresse.Text = dr["address"].ToString();
                //txtcity.Text = dr["city"].ToString();

                //SqlDataReader dreader = com.ExecuteReader();
                //if (dreader.Read())
                //{
                //    txtName.Text = dreader[1].ToString();
                //    txtlName.Text = dreader[2].ToString();
                //    txtAdresse.Text = dreader[3].ToString();
                //    txtcity.Text = dreader[4].ToString();
                //}
                //else
                //{
                //    Response.Write(" Not found");
                //}
                //dreader.Close();
            }
            catch (Exception x)
            {
                Response.Write("Not found" + "" + x.Message);
            }
            finally
            {
                con.Close();
                Clear();
                
            }
        }
    }
}