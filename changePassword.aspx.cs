using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class changePassword : System.Web.UI.Page
{

    String uname = "";

    String pwd="";
    SqlConnection cn ;
    SqlCommand cmdUpdtPswd ;



    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["username"].ToString();
        pwd = Session["password"].ToString();

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtOldPwd.Text == pwd)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            cn.Open();
            String updtPswd = "update std_login set password = '" + txtRpswd.Text.Trim() + "' where username ='" + uname + "'";
            cmdUpdtPswd = new SqlCommand(updtPswd, cn);
            cmdUpdtPswd.ExecuteNonQuery();

            Session["password"] = txtRpswd.Text.Trim();

            Response.Redirect("myQueries.aspx");

        }
        else
        {
            Response.Write("<script>alert('The Old Password Entered Is Not Correct') </script>");

        }
    }
}