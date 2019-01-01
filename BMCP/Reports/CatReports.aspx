<%@ Page Title="" Language="C#" MasterPageFile="~/BMCP/CpanalMaster.master" AutoEventWireup="true" CodeFile="CatReports.aspx.cs" Inherits="BMCP_Reports_CatReports" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms,Version=14.0.0.0" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        </asp:ScriptManagerProxy>
    <div class="container">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>

             </ContentTemplate>
        </asp:UpdatePanel>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SizeToReportContent="True" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" PageCountMode="Actual" CssClass="bg-dark">
            <LocalReport ReportPath="BMCP\Reports\CatReport.rdlc">
                <datasources>
                    <rsweb:ReportDataSource DataSourceId="CarOpjectReport" Name="CatDataset" />
                </datasources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="CarOpjectReport" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CatReportsTableAdapters.CategoryRePortTableAdapter"></asp:ObjectDataSource>
      
    </div>
</asp:Content>

