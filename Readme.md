<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx](./VB/Default.aspx))
<!-- default file list end -->
# Data Aware Export - How to add custom header and footer to an exported Excel document


<p>To customize an exported document, create a new instance of the <a href="https://documentation.devexpress.com/AspNet/clsDevExpressWebASPxPivotGridPivotXlsxExportOptionstopic.aspx">PivotXlsxExportOptions</a> class. It provides the <a href="https://documentation.devexpress.com/CoreLibraries/DevExpressXtraPrintingXlsxExportOptionsEx_CustomizeSheetHeadertopic.aspx">CustomizeSheetHeader</a> and <a href="https://documentation.devexpress.com/CoreLibraries/DevExpressXtraPrintingXlsxExportOptionsEx_CustomizeSheetFootertopic.aspx">CustomizeSheetFooter</a> events that allow adding custom rows and cells before and after a pivot grid control. If you export data to an *.XLS document, use the <a href="https://documentation.devexpress.com/AspNet/clsDevExpressWebASPxPivotGridPivotXlsExportOptionstopic.aspx">PivotXlsExportOptions</a> class instead of providing a similar functionality. </p>
<br>See Also:<br><a href="https://www.devexpress.com/Support/Center/p/E1188">E1188: Export ASPxPivotGrid with additional text captions in header or footer</a>

<br/>


