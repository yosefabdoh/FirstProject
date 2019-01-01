<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="CatManagement.aspx.cs" Inherits="BMCP_CatManagement" %>

<%@ Register Src="~/BMCP/Shwodata.ascx" TagPrefix="uc1" TagName="Shwodata" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />
    <br />
    <div class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
        <ul class="nav nav-pills flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="CatManagement.aspx">عرض الاصناف</a>
            </li>
           
        </ul>


    </div>
    <div class="content-wrapper">
    <div class="container">
        

      <!-- Breadcrumbs-->
      <ol class="breadcrumb ">
        <li class="breadcrumb-item">
          <a href="#"> </a>
        </li>
        <li class="breadcrumb-item active"></li>
      </ol>
    <uc1:Shwodata runat="server" ID="Shwodata" />
        <div class="card mb-3">
            <div class="card-header">
                <i class="fa fa-table"></i>  عرض الاصناف 
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered " id="dataTable1" width="100%" cellspacing="0">
                            <thead class="">
                                                <tr runat="server" style="">
                                                    <th runat="server"></th>
                                                    <th runat="server">Id</th>
                                                    <th runat="server">الصنف</th>
                                                    <th runat="server">وصف الصنف</th>
                                                    <th runat="server">فرع لقسم</th>
                                                </tr>
                                            </thead>

                    <asp:ListView ID="Listview1"  class="table table-bordered" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                       <%-- <AlternatingItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ParentidLabel" runat="server" Text='<%# Eval("Parentid") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="ParentidTextBox" runat="server" Text='<%# Bind("Parentid") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>--%>
                        <InsertItemTemplate>
                            <tbody>

                          
                            <tr style="">   
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id" SelectedValue='<%# Bind("Parentid") %>'>
                                        <asp:ListItem>اختر احد الاقسام</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
  </tbody>
                        </InsertItemTemplate>
                        <ItemTemplate>
                              <tbody>

                                                           
                            <tr>
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </td>
                                <td>
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="ParentidLabel" runat="server" Text='<%# Eval("Parentid") %>' />
                                </td>
                            </tr>
                            </tbody> 
                       
                        </ItemTemplate>
                  
                    
                    </asp:ListView>
                          <tfoot runat="server">
                                                <tr runat="server" style="">
                                                    <th runat="server"></th>
                                                    <th runat="server">Id</th>
                                                    <th runat="server">الصنف</th>
                                                    <th runat="server">وصف الصنف</th>
                                                    <th runat="server">فرع لقسم</th>
                                                </tr>
                                            </tfoot>
                       </table> 
                </div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [Category]" DeleteCommand="DELETE FROM [Category] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Category] ([Name], [Description], [Parentid]) VALUES (@Name, @Description, @Parentid)" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Description] = @Description, [Parentid] = @Parentid WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Parentid" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Parentid" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
</div>
</div>
    
</asp:Content>
