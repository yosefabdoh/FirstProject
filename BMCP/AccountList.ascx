<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AccountList.ascx.cs" Inherits="BMCP_AccountList" %>

            
        <div class="row">
     <div class="card mb-4">  
     <div class="card-header text-center">
          <i class="fa fa-table"></i> جدول المنتجات</div>
        <div class="card-body">


            <div class="table table-bordered table-hover text-center">

  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" dir="rtl" DataKeyNames="Id" DataSourceID="UsersDataSource" CssClass="  " >
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                               <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select"  CssClass=" fa fa-eye btn btn-info btn-sm" PostBackUrl='<%# Eval("Id", "AccountDetails.aspx?id={0}") %>'></asp:LinkButton>
                               <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm ('do you want to delete?')" CssClass="btn btn-danger btn-sm" Text="Delete">
                              <i class="fa fa-trash"> </i>

                                      </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" ControlStyle-CssClass="text-center" >
<ControlStyle CssClass="text-center"></ControlStyle>

<HeaderStyle CssClass="text-center"></HeaderStyle>

<ItemStyle CssClass="text-center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                        <asp:BoundField DataField="roles" HeaderText="roles" SortExpression="roles" />
                        <asp:BoundField DataField="reg_date" HeaderText="reg_date" SortExpression="reg_date" />
                        <asp:CheckBoxField DataField="state" HeaderText="state" SortExpression="state" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="UsersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [users]" DeleteCommand="DELETE FROM [users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [users] ([UserName], [Password], [Email], [Phone], [Age], [Gender], [Address], [FullName], [roles], [reg_date], [state]) VALUES (@UserName, @Password, @Email, @Phone, @Age, @Gender, @Address, @FullName, @roles, @reg_date, @state)" UpdateCommand="UPDATE [users] SET [UserName] = @UserName, [Password] = @Password, [Email] = @Email, [Phone] = @Phone, [Age] = @Age, [Gender] = @Gender, [Address] = @Address, [FullName] = @FullName, [roles] = @roles, [reg_date] = @reg_date, [state] = @state WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phone" Type="Int32" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="roles" Type="String" />
                        <asp:Parameter Name="reg_date" Type="DateTime" />
                        <asp:Parameter Name="state" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phone" Type="Int32" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="roles" Type="String" />
                        <asp:Parameter Name="reg_date" Type="DateTime" />
                        <asp:Parameter Name="state" Type="Boolean" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
</asp:SqlDataSource>
            </div>
            </div>
        </div>
    </div>