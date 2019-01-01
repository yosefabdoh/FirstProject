using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Script.Serialization;
/// <summary>
/// Summary description for regestierationService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class regestierationService : System.Web.Services.WebService
{

    public regestierationService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void UserNameExists(string userName)
    {
        bool userNameInUse = false; 
        string cs = ConfigurationManager.ConnectionStrings["BMDATACONST"].ConnectionString; using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("CheckUserName", con); cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter() {
                ParameterName = "@UserName",
                Value = userName });
            con.Open();
            userNameInUse = Convert.ToBoolean(cmd.ExecuteScalar());
            Registeration registration = new Registeration();
            registration.UserName = userName;
            registration.UserNameInUse = userNameInUse;
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(registration)); 
        }
    }
}


