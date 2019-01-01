<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="BMCP_CreateAccount" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
     

    
    
    <br />
    <br />
    <div class="">
    <div class="container align-items-lg-center">

    <div class="container-fluid">
          <div class="breadcrumb ">
       <h3 class="text-capitalize text-center text-muted">
           
      إنشاء حساب جديد 

       </h3>
      </div>
        <div class="card mb-3 bg-light">

    <div class="card-header text-center ">
        <i class="fa fa-table "></i></div>
        <div class="card-body">
             <div class="table-responsive">
        <table ID="needs-validation" dir="rtl" style="margin:auto  ; " align="center" class="was-validated border border-info border-rounded table table-hover table-striped " aria-pressed="true" >
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label1" runat="server" type="text"  Text="اسم المستخدم"></asp:Label>
                    </address>
                </td>
                <td class="auto-style5">
                    <address>
                    <asp:TextBox ID="txtUserName" runat="server"  CssClass="form-control is-valid" required=""></asp:TextBox>
                    
                    </address>
                </td>
                <td class="auto-style6">
                    <address>
                    <div id="divOutput" ></div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="يجب عدم ترك الحقل فارغاً " CssClass="invalid-feedback" ValidationGroup="Register" ></asp:RequiredFieldValidator>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label2" runat="server" Text="كلمة المرور:"></asp:Label>
                    </address>
                </td>
                <td class="auto-style8">
                    <address>
                    <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control is-valid" TextMode="Password" required=""></asp:TextBox>

                        <ajaxToolkit:PasswordStrength runat="server" BehaviorID="txtPassword_PasswordStrength" TargetControlID="txtPassword" ID="txtPassword_PasswordStrength" DisplayPosition="LeftSide" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="4" PreferredPasswordLength="7" TextCssClass="alert-danger"></ajaxToolkit:PasswordStrength>
                    </address>
                </td>
                <td class="auto-style9">
                    <address>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass=" invalid-feedback" Display="Dynamic" ErrorMessage="يجب كتابة كلمة مرور" ValidationGroup="Register"></asp:RequiredFieldValidator>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label3" runat="server" Text="تأكيد كلمة المرور: "></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                    <asp:TextBox ID="txtconfirmPassword" runat="server"  CssClass="form-control" TextMode="Password" required=""></asp:TextBox>
                    </address>
                </td>
                <td>
                    <address>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconfirmPassword" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="الرجاء تأكيد كلمة المرور" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtconfirmPassword" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="كلمة المرور غير متطابقة" ValidationGroup="Register"></asp:CompareValidator>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label4" CssClass="col-form-label" runat="server" Text="البريد الالكتروني:"></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                    <asp:TextBox ID="txtEmail" runat="server"  CssClass="  form-control" required ></asp:TextBox>
                    </address>
                </td>
                <td>
                    <address>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="الرجاء كتابة بريد الكتروني" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="صيغة البريد الالكتروني غير صحيحة" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Register"></asp:RegularExpressionValidator>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label5" runat="server" Text="رقم الهاتف:"></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass=" form-control"  required=""></asp:TextBox>
                    </address>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="الرجاء كتابة رقم الهاتف" ValidationGroup="Register"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  for="RegularExpressionValidator2" ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="يتكون رقم الهاتف من تسع ارقام" ValidationExpression="\d{9}" ValidationGroup="Register" Width="210px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label6" runat="server" Text="العمر"></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"  required="" ></asp:TextBox>
                    </address>
                </td>
                <td>
                    <address>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAge" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="يجب تحديد العمر" ValidationGroup="Register"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="العمر المسموح به +18"  MinimumValue="18" MaximumValue="62"  ValidationGroup="Register"></asp:RangeValidator>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label7" runat="server" Text="الجنس"></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                    <asp:DropDownList ID="GenderList" runat="server" CssClass=" custom-select "  required =""> 
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="male">ذكر</asp:ListItem>
                        <asp:ListItem Value="female">انثى</asp:ListItem>
                        <asp:ListItem Value="other">افضل عدم الذكر</asp:ListItem>
                    </asp:DropDownList>
                    </address>
                </td>
                <td>
                    <address>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GenderList" CssClass="invalid-feedback" Display="Dynamic" ErrorMessage="الرجاء تحديد الجنس" ValidationGroup="Register"></asp:RequiredFieldValidator>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label9" runat="server" Text="العنوان:"></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                    <asp:TextBox ID="txtAddress" runat="server"  CssClass=" form-control  is-valid" required></asp:TextBox>
                    </address>
                </td>
                <td>
                    <address>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Label ID="Label8" CssClass="col-sm-2 col-form-label" runat="server" Text="الاسم كاملاً:"></asp:Label>
                    </address>
                </td>
                <td class="auto-style3">
                    <address>
                        <asp:TextBox ID="txtFullName" CssClass=" form-control  is-valid" runat="server"></asp:TextBox>
                    </address>
                </td>
                <td>
                    <address>
                    </address>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <address>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="انشاء حساب" CssClass="btn btn-primary" ValidationGroup="Register" />
                    </address>
                </td>
                <td class="auto-style1" colspan="2">
                    <address>
                    <asp:Label ID="lableResult" runat="server" CssClass="text-secondary"></asp:Label>
                    </address>
                </td>
            </tr>
        </table>
    </div></div></div>
    </div></div>
    
    </div>
        <div class="text-center">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="72px" ValidationGroup="Register" CssClass="text text-danger" />
        </div>  




    <!--Scripts & jQyery and Bootsrap #####!-->

    <script type="text/javascript">
        $(document).ready(function () {

            $('#txtUserName').keyup(function () {
                var userName = $(this).val();

                if (userName.length >= 4) {
                    $.ajax({
                        url: 'BMCP/regestierationService.asmx/UserNameExists',
                        method: 'post',
                        data: { userName: userName },
                        dataType: 'json',
                        success: function (data) {
                            var divElement = $('#divOutput');
                            if (data.UserNameInUse) {
                                divElement.text(data.UserName + ' هذا المستخدم مسجل مسبقاً');
                                divElement.css('color', 'red');
                            }
                            else {
                                divElement.text(data.UserName + ' متاح')
                                divElement.css('color', 'green');
                            }
                        },
                        error: function (err) {
                            alert(err);
                        }
                    });
                }
            });
        });
    </script>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            "use strict";
            window.addEventListener("load", function () {
                var form = document.getElementById("needs-validation");
                form.addEventListener("submit", function (event) {
                    if (form.checkValidity() == false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add("was-validated");
                }, false);
            }, false);
        }());
</script>
</asp:Content>

