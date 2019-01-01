<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Pr_Mangement.ascx.cs" Inherits="BMCP_Pr_Mangement" %>

<style>

     .table-hover tbody tr:hover {
	background-color: rgba(251, 232, 153, 0.68);
}
</style>



     <div class="card mb-3">  
     <div class="card-header text-center">
          <i class="fa fa-table"></i> جدول المنتجات</div>
        <div class="card-body">


            <asp:Label ID="Label1" runat="server" Text="Filter:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                <asp:ListItem Value="True">منتجات متاحة</asp:ListItem>
                <asp:ListItem Value="False">منتجات غير متاحة</asp:ListItem>
                <asp:ListItem Value="all">الكل</asp:ListItem>

            </asp:DropDownList>
            <br />


     <div class="table-responsive">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"  CssClass="table table-hover table-bordered" >
            <AlternatingRowStyle BackColor="White" CssClass="table-info text-center"/>
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" CssClass="btn btn-secondary" Text="Select"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                <asp:BoundField DataField="Expiredate" HeaderText="Expiredate" SortExpression="Expiredate" />
                <asp:CheckBoxField DataField="Status " HeaderText="Status " SortExpression="Status " />
                <asp:TemplateField HeaderText="الصنف" SortExpression="CategoryId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id" Enabled="False" SelectedValue='<%# Eval("CategoryId") %>'>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT [Id], [Name] FROM [Category]"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle CssClass="table-primary text-center" Font-Bold="True"  />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle CssClass="bg-light text-center"/>
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>



        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="149px" Width="294px" CssClass="table table-borderd table-hover bg-secondary text-center text-light ">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                <asp:BoundField DataField="image_src" HeaderText="image_src" SortExpression="image_src" />
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                <asp:BoundField DataField="Expiredate" HeaderText="Expiredate" SortExpression="Expiredate" />
                <asp:CheckBoxField DataField="Status " HeaderText="Status " SortExpression="Status " />
                <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" SelectedValue='<%# Bind("CategoryId") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT [Id], [Name] FROM [Category]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-info"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn  btn-dark"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([Name], [Description], [Price], [Cost], [image_src], [CreateDate], [Expiredate], [Status ], [CategoryId]) VALUES (@Name, @Description, @Price, @Cost, @image_src, @CreateDate, @Expiredate, @Status_, @CategoryId)" SelectCommand="SELECT * FROM [Products] WHERE ([Status ] = @Status_)" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [Price] = @Price, [Cost] = @Cost, [image_src] = @image_src, [CreateDate] = @CreateDate, [Expiredate] = @Expiredate, [Status ] = @Status_, [CategoryId] = @CategoryId WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Cost" Type="Double" />
                <asp:Parameter Name="image_src" Type="String" />
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="Expiredate" Type="DateTime" />
                <asp:Parameter Name="Status_" Type="Boolean" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Status_" PropertyName="SelectedValue" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Cost" Type="Double" />
                <asp:Parameter Name="image_src" Type="String" />
                <asp:Parameter Name="CreateDate" Type="DateTime" />
                <asp:Parameter Name="Expiredate" Type="DateTime" />
                <asp:Parameter Name="Status_" Type="Boolean" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
  
    </div> </div> </div>

