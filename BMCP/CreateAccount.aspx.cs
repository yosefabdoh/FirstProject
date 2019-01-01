using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
using System.Security.Cryptography;
public partial class BMCP_CreateAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        //1.Connecting 
        //string constring = "Data Source=ANDROID-F767;Initial Catalog=BICEDATA;Integrated Security=True;Connect Timeout=30";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BMDATACONST"].ToString());
        if (con.State == System.Data.ConnectionState.Open)
            con.Close();
        con.Open();
        //2.Commanding 
        string sql = "insert into users(UserName,Password,Email,Phone,Age,Gender,Address,FullName)" +
            "VALUES(@Uname,@Pass,@Mail,@Phon,@Ag,@Gen,@Ad,@FName)";
        SqlCommand cmd = new SqlCommand(sql, con);

        cmd.Parameters.AddWithValue("@Uname", txtUserName.Text.Trim());
        cmd.Parameters.AddWithValue("@Pass", txtPassword.Text);
        cmd.Parameters.AddWithValue("@Mail", txtEmail.Text.Trim());
        cmd.Parameters.AddWithValue("@Phon", txtPhone.Text.Trim());
        cmd.Parameters.AddWithValue("@Ag", txtAge.Text.Trim());
        cmd.Parameters.AddWithValue("@Gen", GenderList.SelectedValue);
        cmd.Parameters.AddWithValue("@Ad", txtAddress.Text.Trim());
        cmd.Parameters.AddWithValue("@FName", txtFullName.Text.Trim());

        int r = cmd.ExecuteNonQuery();
        if (r > 0)
        {

            lableResult.Text = "تمت العملية بنجاح " + "يمكنك الدخول الى الموقع بإسم  " + txtUserName.Text;
        }
    }
}