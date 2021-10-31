using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class createNewAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tnc.Visible = false;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String st = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(st);
        String g= "";


        if (rbtAccept.Checked)
        {




            try
            {
                con.Open();
                if (rbtMale.Checked == true)
                {
                    g = "Male";
                }
                else if (rbtFemale.Checked == true)
                {
                    g = "Female";
                }

                SqlCommand cmd = new SqlCommand("Insert into std_login" + "(f_name,l_name,gender,username,password,emailid,d_name,sem,address,mob_no,dob) values (@f_name,@l_name,@gender,@username,@password,@emailid,@d_name,@sem,@address,@mob_no,@dob)", con);
                cmd.Parameters.AddWithValue("@f_name", txtFname.Text);
                cmd.Parameters.AddWithValue("@l_name", txtLname.Text);
                cmd.Parameters.AddWithValue("@gender", g);
                cmd.Parameters.AddWithValue("@username", txtUname.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@emailid", txtEmail.Text);
                cmd.Parameters.AddWithValue("@d_name", ddlDept.Text);
                cmd.Parameters.AddWithValue("@sem", txtSem.Text);
                cmd.Parameters.AddWithValue("@address", txtAdd.Text);
                cmd.Parameters.AddWithValue("@mob_no", txtMob.Text);
                cmd.Parameters.AddWithValue("@dob", tbdate.Text);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert(\"Login Successfull\")</script>");

                Response.Redirect("login.aspx");


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert(\"Database Error Occured\")</script>");
            }

        }else
        {
            tnc.Visible = true;
        }



    }
}