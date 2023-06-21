<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dxwpg" %>

<%@ Register assembly="DevExpress.Web.v21.2, Version=21.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

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
        DataSourceID="SqlDataSource1" Width="100%" ClientIDMode="AutoID" IsMaterialDesign="False" >
        <Fields>
            <dxwpg:PivotGridField ID="fieldProductName" AreaIndex="0">
                <DataBindingSerializable>
                    <dxwpg:DataSourceColumnBinding ColumnName="ProductName" />
                </DataBindingSerializable>
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldCompanyName" Area="RowArea" AreaIndex="0">
                <DataBindingSerializable>
                    <dxwpg:DataSourceColumnBinding ColumnName="CompanyName" />
                </DataBindingSerializable>
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldOrderYear" Area="ColumnArea" AreaIndex="0" Caption="Year">
                <DataBindingSerializable>
                    <dxwpg:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateYear" />
                </DataBindingSerializable>
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldOrderMonth" Area="ColumnArea" AreaIndex="1" Caption="Month" 
                UnboundFieldName="fieldOrderMonth">
                <DataBindingSerializable>
                    <dxwpg:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateMonth" />
                </DataBindingSerializable>
            </dxwpg:PivotGridField>
            <dxwpg:PivotGridField ID="fieldProductAmount" Area="DataArea" AreaIndex="0">
                <DataBindingSerializable>
                    <dxwpg:DataSourceColumnBinding ColumnName="ProductAmount" />
                </DataBindingSerializable>
            </dxwpg:PivotGridField>
        </Fields>
        <OptionsView ShowHorizontalScrollBar ="true" />
        <OptionsData DataProcessingEngine="Optimized" />
    </dxwpg:ASPxPivotGrid>
        <dxwpg:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server" ASPxPivotGridID="ASPxPivotGrid1">
        </dxwpg:ASPxPivotGridExporter>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [CustomerReports]"></asp:SqlDataSource>
    </form>
</body>
</html>