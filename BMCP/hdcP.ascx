<%@ Control Language="C#" AutoEventWireup="true" CodeFile="hdcP.ascx.cs" Inherits="BMCP_hdcP" %>
<asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>

<header>
            <div class="container">
                 <div class="row">
                     <div class="col-md-8">
                       <b>

                         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                              <ContentTemplate>
                                  <asp:Timer ID="Timer2" runat="server" Interval="1000" OnTick="Timer1_Tick">
                               
                            </asp:Timer>
                                  <asp:Label ID="lbldate1" runat="server" Text=""></asp:Label>
                              </ContentTemplate>
              </asp:UpdatePanel>
         
                       </b>

                     </div> 
                     <div class="col-md-4 ">
                         <div class="row">



                             <div class="nav-item dropdown   " aria-labelledby="alertsDropdown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fa fa-fw fa-bell fa-lg"></i></a>
                                 <div class="dropdown-menu " aria-labelledby="alertsDropdown">
                                     <h6 class="dropdown-header">New Alerts:</h6>
                                     
                                     <div class="dropdown-divider"></div>
                                     <a class="dropdown-item" href="#">
                                         <span class="text-success">
                                             <strong>
                                                 <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
                                         </span>
                                         <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                                         <span class="small float-right text-muted">11:21 AM</span>
                                     </a>
                                     <div class="dropdown-divider"></div>
                                     <a class="dropdown-item small" href="#">View all alerts</a>
                                 </div>
                             </div>

                                    <div class="nav-item dropdown   " aria-labelledby="alertsDropdown">
                                        
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><asp:Label ID="lbl2" runat="server" Text="Label" CssClass="btn btn-primary fa fa-user "></asp:Label></a>
                                 <div class="dropdown-menu " aria-labelledby="alertsDropdown">

                                     <h6 class="dropdown-header">مرحبا <asp:Label ID="Label1" runat="server" Text="Label">
                                         <asp:LoginName ID="LoginName1" runat="server" />

                                                                       </asp:Label></h6>
                                     
                                     <div class="dropdown-divider"></div>
                                     <a class="dropdown-item" href="#">
                                         <span class="text-success">
                                             <strong>
                                                   معلومات الحساب </strong>
                                         </span>
                                        
                                         
                                     </a>
                                         <a class="dropdown-item" href="#">
                                         <span class="text-primary">
                                             <strong>
                                                   تعديل الحساب </strong>
                                         </span>
                                        
                                         
                                     </a>
                                         <a class="dropdown-item" href="#">
                                         <span class="text-danger">
                                             <strong>
                                                   تسجيل الخروج </strong>
                                         </span>
                                        
                                         
                                     </a>
                                     <div class="dropdown-divider"></div>
                                   
                                 </div>
                             </div>

              
                         </div>
                     </div>
                 </div>
             </div>
        </header>


<%--<div class="dropdown-menu show" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>--%>