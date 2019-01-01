<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="AccountM.aspx.cs" Inherits="BMCP_AccountM" %>

<%@ Register Src="~/BMCP/AccountList.ascx" TagPrefix="uc1" TagName="AccountList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid"    >
        <div class="row">
            <div class="col-md-10"  dir="rtl">


    <div class="jumbotron" dir="rtl">
  <h1 class="display-5">قائمة حسابات المستخدمين </h1>
  <p class="lead">مرحبا بك في لوحة  التحكم الخاصة  بالمستخدمين المسجلين في الموقع .</p>
  <hr class="my-4">
  <p>في حال اردت اضافة مستخدم جديد يمكن الضغط على الزر ادناه.</p>
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="CreateAccount.aspx" role="button">إنشاء مستخدم</a>
    <a class="btn btn-primary btn-lg" href="AccountShow.aspx" role="button">عرض المستخدمين</a>
  </p>
</div>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="UserDataSummery" CssClass="table table-bordered table-hover text-center " AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName"></asp:BoundField>
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                        <asp:BoundField DataField="roles" HeaderText="roles" SortExpression="roles"></asp:BoundField>
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                        <asp:CheckBoxField DataField="state" HeaderText="state" SortExpression="state"></asp:CheckBoxField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="UserDataSummery" ConnectionString='<%$ ConnectionStrings:BMDATACONST %>' SelectCommand="SELECT [Id], [UserName], [FullName], [Password], [Email], [roles], [Phone], [state] FROM [users]"></asp:SqlDataSource>
                <br />
            </div> 
            <div class="col-md-3">
          

            </div>
        </div>

    </div>
    
</asp:Content>

