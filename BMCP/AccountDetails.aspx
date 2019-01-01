<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="AccountDetails.aspx.cs" Inherits="BMCP_AccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container align-items-lg-center">
        <div class="container-fluid ">
       
                <h1 class=" py-3">
                  
                    
                </h1>
                 <!-- Breadcrumbs-->
      <div class="breadcrumb ">
       <h3 class="text-capitalize text-center text-muted">
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("id","Navigate.aspx?id={0}") %>' />
           تفاصيل المنتج 

       </h3>
      </div>
<div class="card mb-3 bg-light">

    <div class="card-header text-center ">
        <i class="fa fa-table "></i></div>
        <div class="card-body">
             <div class="table-responsive">
                 <div class="container-fluid center" dir="rtl">

                     <asp:DetailsView ID="DetailsView1" runat="server" Height="50px"  CssClass="table table-sm table-borded bg-dark text-light text-center" HorizontalAlign="Center" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                         <EmptyDataRowStyle CssClass="alert alert-danger" />
                         <EmptyDataTemplate>
                             Sorry There is No Data To Show
                         </EmptyDataTemplate>

                         <Fields>
                             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                             <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                             <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                             <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                             <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                             <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                             <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                             <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                             <asp:BoundField DataField="roles" HeaderText="roles" SortExpression="roles" />
                             <asp:BoundField DataField="reg_date" HeaderText="reg_date" SortExpression="reg_date" />
                             <asp:CheckBoxField DataField="state" HeaderText="state" SortExpression="state" />
                             <asp:TemplateField ShowHeader="False">
                                 <EditItemTemplate>
                                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-success fa fa-do" Text="Update"></asp:LinkButton>
                                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger fa fa-undo" Text="Cancel"></asp:LinkButton>
                                 </EditItemTemplate>
                                 <InsertItemTemplate>
                                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" CssClass="fa" Text="Insert"></asp:LinkButton>
                                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger fa fa-undo" Text="Cancel"></asp:LinkButton>
                                 </InsertItemTemplate>
                                 <ItemTemplate>
                                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-secondary fa fa-edit" Text="Edit"></asp:LinkButton>
                                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" CssClass=" btn btn-primary fa fa-user-circle" Text="New"></asp:LinkButton>
                                     &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-danger fa fa-trash" OnClientClick="return confirm ('do you want to delete?')" Text="Delete"></asp:LinkButton>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Fields>
                     </asp:DetailsView>

                </div>



             </div>
        </div>
</div>


        </div>
    </div>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [users] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [users] ([UserName], [Password], [Email], [Phone], [Age], [Gender], [Address], [FullName], [roles], [reg_date], [state]) VALUES (@UserName, @Password, @Email, @Phone, @Age, @Gender, @Address, @FullName, @roles, @reg_date, @state)" UpdateCommand="UPDATE [users] SET [UserName] = @UserName, [Password] = @Password, [Email] = @Email, [Phone] = @Phone, [Age] = @Age, [Gender] = @Gender, [Address] = @Address, [FullName] = @FullName, [roles] = @roles, [reg_date] = @reg_date, [state] = @state WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="roles" Type="String"></asp:Parameter>
            <asp:Parameter Name="reg_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="state" Type="Boolean"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Age" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
            <asp:Parameter Name="Address" Type="String"></asp:Parameter>
            <asp:Parameter Name="FullName" Type="String"></asp:Parameter>
            <asp:Parameter Name="roles" Type="String"></asp:Parameter>
            <asp:Parameter Name="reg_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="state" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    

</asp:Content>

