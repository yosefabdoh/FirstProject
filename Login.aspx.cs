using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using BCrypt.Net;
using System.Security.Policy;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {

            if (Request.Cookies["UserName"] != null)

                inputEmail.Text = Request.Cookies["userpassword"].Value;

            if (Request.Cookies["userpassword"] != null)

                inputPassword.Attributes.Add("value", Request.Cookies["userpassword"].Value);

            if (Request.Cookies["UserName"] != null && Request.Cookies["userpassword"] != null)
                rememberme.Checked = true;
        }
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    
        
        protected void btnLogin_Click(Object sender, EventArgs e)
        {
            

            // Create our connection and command objects
            //1.connecting 
            string Constring = @"Data Source=ANDROID-F767\MSSQLSERVER2017;Initial Catalog=BICEDATA;Integrated Security=True;Connect Timeout=30";
            SqlConnection conn = new SqlConnection(Constring);
            SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE UserName=@userName " + "AND password=@userpassword", conn);


        // Fill our parameters
        cmd.Parameters.AddWithValue("@userName", inputEmail.Text);
        String passwordHash = BCrypt.Net.BCrypt.HashPassword(inputPassword.Text);
            cmd.Parameters.AddWithValue("@userpassword", inputPassword.Text);
        
            // Execute the command
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
     ///storedPassword from Database, etc.
            if(dt.Rows.Count != 0)
        {
            // //Verify user password
            //// Convert.ToString(cmd.Parameters.AddWithValue("@userpassword", Password.Text))
            // bool passwordIsCorrect = BCrypt.Net.BCrypt.Verify(Password.Text, passwordHash);
            // if(passwordIsCorrect)
            // {

            // }
            if (rememberme.Checked == true)
            {
                Response.Cookies["userName"].Value = inputEmail.Text;
                Response.Cookies["userpassword"].Value = inputPassword.Text;
                Response.Cookies["userName"].Expires = DateTime.Now.AddMinutes(2);
                Response.Cookies["userpassword"].Expires = DateTime.Now.AddMinutes(2);
            }
            else
            {
                Response.Cookies["userName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["userpassword"].Expires = DateTime.Now.AddDays(-1);
            }
            Session["FN"] = dt.Rows[0]["FullName"];
            Session.Timeout = 1;
            Response.Redirect("~/BMCP/Default.aspx");

        }
            else
        {

            ErrorLabel.Text = "wrong Password ";
            ErrorLabel.Visible = true;
        }
        conn.Close();


       

        }


}//SqlDataReader reader = cmd.ExecuteReader();
 ////if (reader.Read())
 /*     if(dt.Rows.Count > 0)
      {
          // Create a new ticket used for authentication
          FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
             1, // Ticket version
             Name.Text, // Name associated with ticket
             DateTime.Now, // Date/time issued
             DateTime.Now.AddMinutes(10), // Date/time to expire
             true, // "true" for a persistent user cookie
             reader.GetString(0), // User-data, in this case the roles
             FormsAuthentication.FormsCookiePath);// Path cookie valid for

          // Encrypt the cookie using the machine key for secure transport
          string hash = FormsAuthentication.Encrypt(ticket);
          HttpCookie cookie = new HttpCookie(
             FormsAuthentication.FormsCookieName, // Name of auth cookie
             hash); // Hashed ticket

          // Set the cookie's expiration time to the tickets expiration time
          if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

          // Add the cookie to the list for outgoing response
          Response.Cookies.Add(cookie);

          // Redirect to requested URL, or homepage if no previous page
          // requested
          string returnUrl = Request.QueryString["ReturnUrl"];
          if (returnUrl == null) returnUrl = "~/Default.aspx";

          // Don't call FormsAuthentication.RedirectFromLoginPage since it
          // could
          // replace the authentication ticket (cookie) we just added
          Response.Redirect(returnUrl);


      }
      else
      {
          // Never tell the user if just the Name is password is incorrect.
          // That just gives them a place to start, once they've found one or
          // the other is correct!
          //ErrorLabel.Text = "Name / password incorrect. Please try again.";
          //ErrorLabel.Visible = true;


      }

      reader.Close();
      conn.Close();
      */
