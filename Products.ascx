<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Products.ascx.cs" Inherits="Products" %>

<div class="container-fluid">
        <h1 class="my-4">Welcome to Black Market</h1>
        <!-- Marketing Icons Section -->
        <div class="row bg-light">
            <div class="col-lg-4 mb-4">
                <div class="card h-100 bg-light">
                    <h4 class="card-header">Headline One</h4>
                    <div class="card-body">
                        <p class="card-text">Here you can put your First headline and details about it </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100 bg-light">
                    <h4 class="card-header">Headline Two</h4>
                    <div class="card-body">
                        <p class="card-text">Here you can put your Second headline and details about it </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card h-100 bg-light">
                    <h4 class="card-header">Headline Three</h4>
                    <div class="card-body">
                        <p class="card-text">Here you can put your Third headline and details about it </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <h2>Products</h2>

    <%--<div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#">
                    <img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#" onclick="@Pr">Product One</a>
                    </h4>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#">
                    <img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Product Two</a>
                    </h4>
                    <p class="card-text">Here you can put your Second headline and details about it  Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#">
                    <img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Product Three</a>
                    </h4>
                    <p class="card-text">Here you can put your Third headline and details about it  facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#">
                    <img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Product four</a>
                    </h4>
                    <p class="card-text">Here you can put your Second headline and details about it  Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#">
                    <img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Product Five</a>
                    </h4>
                    <p class="card-text">Here you can put your Second headline and details about it  Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#">
                    <img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Product six</a>
                    </h4>
                    <p class="card-text">Here you can put your Sixth headline and details about it , sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                </div>
            </div>
        </div>
    </div>--%>
        <!-- /.row 2 -->
        </div>

<div class="row  ">

    
<asp:ListView ID="ListView1" class="col-lg-4 col-sm-6 " runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" >
    <ItemTemplate>
        <div class="col-lg-4 col-sm-6  ">
       
              <div class="card  h-100 ">

            
         
          <asp:Image ID="Image1" CssClass="card-img-top rounded-circle h-100 w-100 " runat="server" ImageUrl='<%# Eval("image_src") %>'  />
            <br />
          <div class="dropdown-divider"></div>
                <div class="card-header">
                    <div class="card-body">
                        <h4 class="card-title">
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </h4>
                        <p class="card-text">
                           
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />

                        </p>
                          <a href= '<%# Eval("id","Navigate.aspx?id={0}") %>' class="btn btn-primary">more details</a>
                    </div>
           <div class="dropdown-divider"></div>
          
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
                </div>
        </div>    </div>
          
    </ItemTemplate>
    
</asp:ListView>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT TOP (9) image_src, Name, Description, Id FROM Products WHERE (status = @stutus) ORDER BY Expiredate DESC">
    <SelectParameters>
        <asp:Parameter DefaultValue="True" Name="stutus"></asp:Parameter>
    </SelectParameters>
</asp:SqlDataSource>

