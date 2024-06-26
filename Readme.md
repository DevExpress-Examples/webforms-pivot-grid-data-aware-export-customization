<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577092/15.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T355654)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# Data Aware Export - How to add custom header and footer to an exported Excel document


<p>To customize an exported document, create a new instance of the <a href="https://documentation.devexpress.com/AspNet/clsDevExpressWebASPxPivotGridPivotXlsxExportOptionstopic.aspx">PivotXlsxExportOptions</a> class. It provides the <a href="https://documentation.devexpress.com/CoreLibraries/DevExpressXtraPrintingXlsxExportOptionsEx_CustomizeSheetHeadertopic.aspx">CustomizeSheetHeader</a> and <a href="https://documentation.devexpress.com/CoreLibraries/DevExpressXtraPrintingXlsxExportOptionsEx_CustomizeSheetFootertopic.aspx">CustomizeSheetFooter</a> events that allow adding custom rows and cells before and after a pivot grid control. If you export data to an *.XLS document, use the <a href="https://documentation.devexpress.com/AspNet/clsDevExpressWebASPxPivotGridPivotXlsExportOptionstopic.aspx">PivotXlsExportOptions</a> class instead of providing a similar functionality. </p>
<br>See Also:<br><a href="https://www.devexpress.com/Support/Center/p/E1188">E1188: Export ASPxPivotGrid with additional text captions in header or footer</a>

<br/>


<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=webforms-pivot-grid-data-aware-export-customization&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=webforms-pivot-grid-data-aware-export-customization&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
