<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dxwpg" %>

<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <dx:ASPxButton ID="ASPxButton1" runat="server" Height="22px" OnClick="ASPxButton1_Click" Text="Export" Width="124px">
        </dx:ASPxButton>

    </div>
    <dxwpg:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
        DataSourceID="AccessDataSource1" Width="100%" >
        <Fields>
            <dxwpg:PivotGridField ID="fieldProductName" AreaIndex="0" 
                FieldName="ProductName">
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldCompanyName" Area="RowArea" AreaIndex="0" 
                FieldName="CompanyName">
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldOrderYear" Area="ColumnArea" AreaIndex="0" 
                FieldName="OrderDate" GroupInterval="DateYear" Caption="Year" 
                UnboundFieldName="fieldOrderYear">
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldOrderMonth" Area="ColumnArea" AreaIndex="1" 
                FieldName="OrderDate" GroupInterval="DateMonth" Caption="Month" 
                UnboundFieldName="fieldOrderMonth">
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldProductAmount" Area="DataArea" AreaIndex="0" 
                FieldName="ProductAmount">
            </dxwpg:PivotGridField>
        </Fields>
        <OptionsView ShowHorizontalScrollBar ="true" />
    </dxwpg:ASPxPivotGrid>
        <dxwpg:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server" ASPxPivotGridID="ASPxPivotGrid1">
        </dxwpg:ASPxPivotGridExporter>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/nwind.mdb" 
        SelectCommand="SELECT * FROM [CustomerReports]">
    </asp:AccessDataSource>
    </form>
</body>
</html>