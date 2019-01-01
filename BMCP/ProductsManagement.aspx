<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="ProductsManagement.aspx.cs" Inherits="BMCP_ProductsManagement" %>

<%@ Register Src="~/BMCP/Pr_Mangement.ascx" TagPrefix="uc1" TagName="Pr_Mangement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        <br />
    </p>
       <div class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
        <ul class="nav nav-pills flex-column">
            <li class="nav-item">
                <a class="nav-link active text-center" href="ProductsManagement.aspx">عرض  المنتجات</a>
            </li>
           
        </ul>


    </div>
    <div class="content-wrapper">
        <div class=" container">

                     <!-- Breadcrumbs-->
      <div class="breadcrumb ">
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("id","Navigate.aspx?id={0}") %>' />
       <h3 class="text-capitalize text-center text-muted  ">
          ادارة المنتجات

       </h3>
      </div>
            <uc1:Pr_Mangement runat="server" ID="Pr_Mangement" />
<div class="card mb-3 bg-light">
    
    <div class="card-header text-center text-muted ">
        <i class="fa fa-table "></i></div>
            <div class="card-body">
                <div class="table-responsive">
               

                    

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProductsDataSource" CellPadding="4" ForeColor="#333333" GridLines="None" Width="887px" CssClass="table table-hover bg-dark text-center">
            <AlternatingRowStyle BackColor="White" CssClass="table-hover table-info text-center" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:TemplateField HeaderText="image_src" SortExpression="image_src">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image_src") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" CssClass="card-img-top" ImageUrl='<%# Eval("image_src") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                <asp:BoundField DataField="Expiredate" HeaderText="Expiredate" SortExpression="Expiredate" />
                <asp:CheckBoxField DataField="Status " HeaderText="Status " SortExpression="Status " />
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle  CssClass="table-primary text-center" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

    <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
               </div>
                </div>
            </div>
            </div>
        </div>
                  
</asp:Content>

