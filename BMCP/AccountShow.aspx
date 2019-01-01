<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="AccountShow.aspx.cs" Inherits="BMCP_AccountShow" %>

<%@ Register Src="~/BMCP/AccountList.ascx" TagPrefix="uc1" TagName="AccountList" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <div class="container-fluid"> 

    <div class="row">
            
     <div class="card mb-3">  
     <div class="card-header text-center">
          <i class="fa fa-table"></i> جدول المنتجات</div>
        <div class="card-body">


           

                <uc1:AccountList runat="server" ID="AccountList" />
    </div>
                
                 
            </div>
        </div>
    </div>
</asp:Content>

