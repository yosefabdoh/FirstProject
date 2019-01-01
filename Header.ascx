<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<style>
        #profile:hover {
            background: #0083c925;
        }

        #register:hover {
            background: #0083c925;
        }

        #login:hover {
            background: #5BBCEC;
        }

        #logout:hover {
            background: #f12a07a1;
        }

        .fa {
            padding: 11px 15px;
        }

        .toolbar i:hover {
            color: white;
            border-radius: 30px;
        }

        .fa-facebook:hover {
            background: #0083C9;
            border-radius: 30px;
        }

        .fa-linkedin:hover {
            background: rgb(1, 39, 59);
            border-radius: 30px;
        }

        .fa-twitter:hover {
            background: #5BBCEC;
            border-radius: 30px;

        }

        b4.d .fa-linkedin:hover {
            background: #FF4518;
       border-radius: 30px;
            }

        .fa-instagram:hover {
            background: #90C9DC;
            border-radius: 30px;
        }

        .fa-google-plus:hover {
            background: #CE3C2D;
          
        }

        .toolbar .social-media .nav-link {
            padding: 0px;
        }
    
    .auto-style1 {
        width: 231px;
        height: 63px;
    }
    
    </style>
<header>

       <%--     <div class="logo row text-center">
                <div class="col-4"> Contact Information...</div>
                <div class="col-4">Logo</div>
                <div class="col-4">Cart..</div>
            </div>
--%>

    <div class="">

   
      <div class="toolbar row" style="background-color:honeydew"> 

                
              <div class="col-7"> 
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a id="profile" class="nav-link text-dark" href="#">
                                <i aria-hidden="true">Profile</i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a id="register" class="nav-link text-dark" href="/Register.aspx"><i aria-hidden="true">Register</i></a>
                        </li>
                        <li class="nav-item">
                            <a id="login" class="nav-link text-dark" href="/Login.aspx"><i class="" aria-hidden="true">login</i></a>
                        </li>
                        <li class="nav-item">
                            <a id="logout" class="nav-link text-dark" href="#"><i aria-hidden="true">logout</i></a>
                        </li>
                    </ul>

                </div>
        

                        <div class="col-2">

                            
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                              <ContentTemplate>
                                  <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                               
                            </asp:Timer>
                                  <asp:Label ID="lbldate" runat="server" Text=""></asp:Label>
                              </ContentTemplate>
              </asp:UpdatePanel>
         
                            
                        </div>
                <div class="col-3">
                    <ul class="nav justify-content-end social-media">
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
     </div>
    <div class="row">
                <div class="col-sm-4" >
                    <img src="images/bing.png" class="auto-style1" alt="BlackMarket">
                </div>
                <div class="col-md-8  d-none d-sm-block">
                    <div class="row header-info pt-2">
                        <div class="col-sm-4 ">
                            <ul class="list-unstyled   pt-2">
                                <li>
                                    <i class="fa fa-map-marker  fa-lg mr-2" aria-hidden="true"></i>
                                    <span>Sawan,Sanaa - Yemen</span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-sm-4 ">
                            <ul class="list-unstyled   pt-2">
                                <li>
                                    <i class="fa fa-phone fa-lg  mr-2" aria-hidden="true"></i>
                                    <span>774528700, +9671329040 </span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-sm-4">
                            <ul class="list-unstyled  pt-2">
                                <li>
                                    <i class="fa fa-envelope fa-1x  mr-2" aria-hidden="true">
                                    </i>
                                    <span> info@Blackmarket.com
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    

</header>