<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NavBar.ascx.cs" Inherits="NavBar" %>


<nav class="navbar fixed navbar-expand-lg navbar-dark bg-dark ">
 <a class="btn btn-dark text-secondary" href="#" id="toggleNavColor">Change Theme</a>
      <div class="container">
        <a class="navbar-brand" href="Default.aspx">BlackMarket</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
              
           <%--   <li class="nav-item">
                  <a class="nav-link" href="about.html">About</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="Category.html">Category</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                      <a class="dropdown-item" href="First-1-col.html">1 First Product</a>
                      <a class="dropdown-item" href="Second-2-col.html">2 Second Product</a>
                      <a class="dropdown-item" href="Third-3-col.html">3 Third Product</a>
                      <a class="dropdown-item" href="Fourth-4-col.html">4 Fourth Product</a>
                      <a class="dropdown-item" href="Special-Product.html">Special Product Item</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                      <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                      <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                      <a class="dropdown-item" href="blog-post.html">Blog Post</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownother" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Other Pages
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                      <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                      <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                      <a class="dropdown-item" href="faq.html">FAQ</a>
                      <a class="dropdown-item" href="404.html">404</a>
                      <a class="dropdown-item" href="pricing.html">Pricing Table</a>
                  </div>
              </li>--%>
          
              <asp:ListView ID="ListView1"  runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                  
                  
                  
                  <ItemTemplate >    
                      <li class="nav-item" >
                          <a href='<%# Eval("id","Navigate.aspx?id={0}") %>'  class="nav-link"> <%# Eval("name") %></a>

                     
                      </li>
                  </ItemTemplate>
                  
                  
                  
                  
              </asp:ListView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BMDATACONST %>" SelectCommand="SELECT [id], [name] FROM [NavTable] WHERE ([status] = @status) ORDER BY [id] DESC">
                  <SelectParameters>
                      <asp:Parameter DefaultValue="true" Name="status" Type="Boolean" />
                  </SelectParameters>
              </asp:SqlDataSource>
         
          </ul>
        </div>
      </div>
    </nav>
       
       