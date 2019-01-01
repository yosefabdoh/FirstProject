<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Shwodata.ascx.cs" Inherits="Shwodata" %>


    <div class="card mb-3">  
     <div class="card-header">
          <i class="fa fa-table"></i> جدول الاصناف</div>
        <div class="card-body">
     <div class="table-responsive">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"  CssClass="table table-hover table-bordered" >
            <AlternatingRowStyle BackColor="White" CssClass="table-info text-center"/>
            <Columns>
                <asp:TemplateField ShowHeader="False">
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:TemplateField HeaderText="الصنف" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id","CatDetails.aspx?id={0}") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Parentid" HeaderText="Parentid" SortExpression="Parentid" />
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



        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Vertical" Height="149px" Width="294px" CssClass="table table-borderd">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Parentid" HeaderText="Parentid" SortExpression="Parentid" />
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-info"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-dark"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" DeleteCommand="DELETE FROM [Category] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Category] ([Name], [Description], [Parentid]) VALUES (@Name, @Description, @Parentid)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Description] = @Description, [Parentid] = @Parentid WHERE [Id] = @Id">
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
  
    </div> </div> </div>


 <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Example</div>
        <div class="card-body">
 <div class="table-responsive">

<%--     <table class="table table-sm table-borded bg-info text-light" id="dataTable" cellspacing="0">
          
              <thead class="">
                <tr>
                  <th scope="col">Name</th>
                  <th scope="col">Name</th>
                  <th scope="col">Position</th>
                  <th scope="col">Office</th>
                  <th scope="col">Age</th>
                 
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>Name</th>
                  <th>Name</th>
                  <th>Position</th>
                  <th>Office</th>
                  <th>Age</th>
                
                </tr>
              </tfoot>
              <tbody>
               
                  <tr>
                  <td scope="row">Doris Wilder</td> 
                  <td>Doris Wilder</td>
                  <td>Sales Assistant</td>
                  <td>Sidney</td>
                  <td>23</td>
                  
                </tr>

                  <tr>
                  <td>Doris Wilder</td> 
                  <td>Doris Wilder</td>
                  <td>Sales Assistant</td>
                  <td>Sidney</td>
                  <td>23</td>
                  
                </tr>
                  
                
              </tbody>
            </table> --%>

     <table class="table table-sm table-borded bg-info text-light" id="dataTable1" cellspacing="0">
         <thead>
             <tr runat="server" style="">

                 <th runat="server">الصنف</th>
                 <th runat="server">Name</th>
                 <th runat="server">وصف الصنف</th>
                 <th runat="server">فرع لقسم</th>
             </tr>
         </thead>

         <asp:ListView ID="dataTable" class="table table-bordered" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">


             <ItemTemplate>


                 <tbody>
                     <tr>
                         <td>
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("Name") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("Id") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Label7" runat="server" Text='<%# Eval("Description") %>' />
                         </td>
                         <td>
                             <asp:Label ID="Label8" runat="server" Text='<%# Eval("Parentid") %>' />
                         </td>
                     </tr>
                 </tbody>
             </ItemTemplate>

         </asp:ListView>
                               <%-- <tfoot runat="server">
                                                <tr runat="server" style="">
                                                   
                                                    <th runat="server">Id</th>
                                                    <th runat="server">الصنف</th>
                                                    <th runat="server">وصف الصنف</th>
                                                    <th runat="server">فرع لقسم</th>
                                                </tr>
                                            </tfoot>--%>
    </table>
              </div>
          </div>
        </div> 
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

      
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM
</div>
