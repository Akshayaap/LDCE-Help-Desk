using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class createAssignee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String st = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(st);
        String g = "";

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

            SqlCommand cmd = new SqlCommand("insert into assignee" + "(f_name,l_name,gender,username,password,phone,email,dept,dob,address) values (@f_name,@l_name,@gender,@username,@password,@phone,@email,@dept,@dob,@address)", con);
            cmd.Parameters.AddWithValue("@f_name", txtFname.Text);
            cmd.Parameters.AddWithValue("@l_name", txtLname.Text);
            cmd.Parameters.AddWithValue("@gender",g );
            cmd.Parameters.AddWithValue("@username", txtAsiUname.Text);
            cmd.Parameters.AddWithValue("@password", txtPswd.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@dept", ddlDept.Text);
            cmd.Parameters.AddWithValue("@dob", txtdob.Text);
            cmd.Parameters.AddWithValue("@address", txtAdd.Text);


            cmd.ExecuteNonQuery();

            Response.Redirect("adminHome.aspx");


        }

        catch (Exception ex)
        {
            
        }

    }
}