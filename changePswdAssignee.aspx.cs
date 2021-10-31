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
public partial class changePswdAssignee : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String uname = "";
    String pwd = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        uname = Session["username"].ToString();
        pwd = Session["password"].ToString();

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtOldPwd.Text == pwd)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            String updtPswd = "update assignee set password = '" + txtRpswd.Text.Trim() + "' where username ='" + uname + "'";
            cmd = new SqlCommand(updtPswd, con);
            cmd.ExecuteNonQuery();

            Session["password"] = txtRpswd.Text.Trim();

            Response.Redirect("assigneeHome.aspx");

        }
        else
        {
            Response.Write("<script>alert('The Old Password Entered Is Not Correct') </script>");

        }
    }
}