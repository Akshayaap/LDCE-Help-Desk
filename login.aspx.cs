using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String st = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(st);

        
       

        try
        {





            if (ddlUser.Text == "Student")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from std_login where username='" + txtUname.Text + "' and password='" + txtPswd.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Session["username"] = txtUname.Text;
                    Session["password"] = txtPswd.Text;
                    Session["utype"] = ddlUser.Text;

                    Response.Redirect("myQueries.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }

            }

            else if (ddlUser.Text == "Administrator")
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from admin where username='" + txtUname.Text + "' and password='" + txtPswd.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Session["username"] = txtUname.Text;
                    Session["password"] = txtPswd.Text;
                    Session["utype"] = ddlUser.Text;

                    Response.Redirect("adminHome.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
            else if (ddlUser.Text == "Assignee")
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from assignee where username='" + txtUname.Text + "' and password='" + txtPswd.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();

                if (dt.Rows[0][0].ToString() == "1")
                {
                    Session["username"] = txtUname.Text;
                    Session["password"] = txtPswd.Text;
                    Session["utype"] = ddlUser.Text;
                    Response.Redirect("assigneeHome.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
                
            

           

          
        }

        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}