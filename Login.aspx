<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/signin.css" rel="stylesheet" />
    <style type="text/css">
         .form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}
        .auto-style2 {
            width: 158px;
        }
.custom-select.is-valid,.form-control.is-valid,.was-validated .custom-select:valid,.was-validated .form-control:valid{border-color:#28a745}.border-info{border-color:#17a2b8!important}.form-control{display:block;width:100%;padding:.5rem .75rem;font-size:1rem;line-height:1.25;color:#495057;background-color:#fff;background-image:none;background-clip:padding-box;border:1px solid rgba(0,0,0,.15);border-radius:.25rem;transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s}*,::after,::before{box-sizing:inherit}*,::after,::before{text-shadow:none!important;box-shadow:none!important}
        .auto-style5 {
            width: 28%;
            height: 111px;
        }
   .text-center {
    text-align: center !important;
}
    </style>
</head>
<body class="text-center">
    <form id="form1" class="form-signin  was-validated" runat="server">
     
   
   
      <img class="mb-4" src="images/mini-logo.png"  alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">UserName</label>
      <%--<input id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="" type="email">--%>
                    <asp:TextBox ID="inputEmail" runat="server" CssClass=" form-control is-valid " placeholder="UserName" required="" autofocus="" type="username"></asp:TextBox>
      <label for="inputPassword" class="sr-only">Password</label>
      <%--<input id="inputPassword" class="form-control" placeholder="Password" required="" type="password">--%>
                    <asp:TextBox ID="inputPassword" runat="server"  CssClass=" form-control is-invalid"  placeholder="Password"  TextMode="Password" required=""></asp:TextBox>
        
      <div class="checkbox mb-3">
          <%--<input value="remember-me" type="checkbox"> Remember me--%>
         <asp:CheckBox ID ="rememberme" runat="server"  Text ="  Remember Password" />
      </div>
     <%-- <button class="btn btn-lg btn-primary btn-block" runat="server" type="submit">Sign in</button>--%>
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" CssClass="btn btn-lg btn-primary btn-block" type="submit" />
   
        <asp:Label ID="ErrorLabel" runat="Server" ForeColor="Red"
                Visible="false" />
        <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
      
 


        <br />
        <br />
    
        <%--<table class="auto-style5 was-validated border border-info border-rounded  table-hover table-striped" dir="rtl" style="margin: auto; ">
            <tr>
                <td class="" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="اسم المستخدم"></asp:Label>
                </td>
                <td> UserName
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="كلمة السر"></asp:Label>
                </td>
                <td>Password
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
           
                </td>
                

                <td>
            
                </td>
            </tr>
        </table>--%>
    </div>
    
    </form>
    
</body>
</html>
