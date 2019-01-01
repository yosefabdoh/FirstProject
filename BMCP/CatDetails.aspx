<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="CatDetails.aspx.cs" Inherits="BMCP_CatDetails" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
            تفاصيل الصنف 

       </h3>
      </div>
<div class="card mb-3 bg-light">

    <div class="card-header text-center ">
        <i class="fa fa-table "></i></div>
        <div class="card-body">
             <div class="table-responsive">
                 <div class="container-fluid center" dir="rtl">

                     <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="DetailsDatabase" Height="50px"  CssClass="table table table-hover table-borded table-inverse bg-light text-dark text-center" HorizontalAlign="Center">
                         <Fields>
                             <asp:BoundField DataField="Id" HeaderText="الرقم" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                             <asp:BoundField DataField="Name" HeaderText="الاسم" SortExpression="Name" />
                             <asp:BoundField DataField="Description" HeaderText="الوصف" SortExpression="Description" />
                             <asp:TemplateField HeaderText="الصنف الاساسي" SortExpression="Parentid">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Parentid") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <InsertItemTemplate>
                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Parentid") %>'></asp:TextBox>
                                 </InsertItemTemplate>
                                 <ItemTemplate>
                                     <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" CssClass="custom-select  text-center bg-light text-dark" DataSourceID="DetailsDatabase" DataTextField="Name" DataValueField="Id" Enabled="False" SelectedValue='<%# Bind("Id") %>'>
                                         <asp:ListItem></asp:ListItem>
                                     </asp:DropDownList>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Fields>
                     </asp:DetailsView>
                     <asp:SqlDataSource ID="DetailsDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [Category] WHERE ([Id] = @Id)">
                         <SelectParameters>
                             <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>

                </div>



             </div>
        </div>
</div>


        </div>
    </diV>
</asp:Content>

