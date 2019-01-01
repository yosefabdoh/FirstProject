<%@ Page Title="" Language="C#" MasterPageFile="~/BlackMarket.master" AutoEventWireup="true" CodeFile="Navigate.aspx.cs" Inherits="Navigate" %>

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
                             <asp:BoundField DataField="Id" HeaderText="الرقم" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                             <asp:BoundField DataField="Name" HeaderText="إسم المنتج" SortExpression="Name" />
                             <asp:BoundField DataField="Description" HeaderText="الوصف" SortExpression="Description" />
                             <asp:BoundField DataField="Price" HeaderText="السعر" SortExpression="Price" />
                             <asp:TemplateField HeaderText="صورة للمنتج" SortExpression="image_src">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image_src") %>' CssClass="img-thumbnail"></asp:TextBox>
                                 </EditItemTemplate>
                                 <InsertItemTemplate>
                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image_src") %>'></asp:TextBox>
                                 </InsertItemTemplate>
                                 <ItemTemplate>
                                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image_src") %>' CssClass="img-fluid" />
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:BoundField DataField="CreateDate" HeaderText="تاريخ وصول المنتج" SortExpression="CreateDate" />
                             <asp:BoundField DataField="Expiredate" HeaderText="تاريخ انتهاء العرض" SortExpression="Expiredate" />
                             <asp:CheckBoxField DataField="Status " HeaderText="حالة المنتج" SortExpression="Status " />
                             <asp:TemplateField HeaderText="صنف المنتج" SortExpression="CategoryId">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                                 </EditItemTemplate>
                                 <InsertItemTemplate>
                                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                                 </InsertItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                                     <br />
                                     <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" CssClass="custom-select text-center bg-dark text-light" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId" Enabled="False" SelectedValue='<%# Bind("CategoryId") %>'>
                                         <asp:ListItem></asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT Products.CategoryId, Category.Name FROM Category INNER JOIN Products ON Category.Id = Products.CategoryId"></asp:SqlDataSource>
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

    
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [Products] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
    </asp:SqlDataSource>
    

</asp:Content>

