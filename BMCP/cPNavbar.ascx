<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cPNavbar.ascx.cs" Inherits="BMCP_cPNavbar" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="navbar-header">
                    <a href="Default.aspx" class="navbar-brand">لوحة التحكم </a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#cp_menu" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
              </div>
            <div id="cp_menu" class="collapse navbar-collapse">

                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="../Default.aspx">الرئيسية <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="dropdown"  >
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ادارة الحسابات
                        </a>
                        <%-- <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="#">حسابات المستخدمين </a></li>
                            <li><a class="dropdown-item" href="#">حسابات العملاء </a></li>
                            <li><a class="dropdown-item" href="#">حسابات الوكلاء </a></li>
                        </ul>--%>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" >
                            <div  class="dropdown-item" >
                            <a class="dropdwon-link" href="/BMCP/AccountM.aspx">حسابات المستخدمين </a> </div>      
                            <div class="dropdown-divider"></div>
                            <div class="dropdown-item" ><a class="dropdwon-link" href="/BMCP/AccountM.aspx">حسابات العملاء </a></div>  <div class="dropdown-divider"></div>
                            <div class="dropdown-item" type="button">
                               <a class="dropdwon-link" href="#">حسابات الوكلاء </a></div> 
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SectionsManagemet.aspx">ادارة الاقسام </a>
                    </li>
                    <li class="nav-item">
                       <a class="nav-link" href="CatManagement.aspx">ادارة الاصناف </a>
                    </li>
                    <li class="nav-item">
                       <a class="nav-link" href="ProductsManagement.aspx">ادارة المنتجات </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Reports/CatReports.aspx">التقارير  </a>
                    </li>
                </ul>

            </div>
             <a class="btn btn-primary" href="#" id="toggleNavColor">Night Mode</a>
        </nav>

