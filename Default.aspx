<%@ Page Title="" Language="C#" MasterPageFile="~/BlackMarket.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BMCP_Default" %>

<%@ Register Src="~/Slider.ascx" TagPrefix="uc1" TagName="Slider" %>
<%@ Register Src="~/Products.ascx" TagPrefix="uc1" TagName="Products" %>
<%@ Register Src="~/Slider2.ascx" TagPrefix="uc1" TagName="Slider2" %>






<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <!-- slider -->

<%--    <uc1:Slider runat="server" ID="Slider" />--%>

    <uc1:Slider2 runat="server" ID="Slider2" />
    <!-- /.slider -->

    <!-- prouduct -->
    <uc1:Products runat="server" ID="Products" />
    <!-- /prouduct -->

</asp:Content>


