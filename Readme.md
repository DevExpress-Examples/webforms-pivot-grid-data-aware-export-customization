<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577092/23.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T355654)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# Pivot Grid for Web Forms -  How to Customize an Exported Excel Document (Data Aware Export)

The [PivotXlsxExportOptions](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.PivotXlsxExportOptions) or [PivotXlsExportOptions](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.PivotXlsExportOptions) class provides access to events that allow you to customize the Pivot Grid in the exported document.

![Pivot](./images/Pivot.png)

The following events are used in this example:

* [CustomizeSheetHeader](https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPrinting.XlsxExportOptionsEx.CustomizeSheetHeader)

    Adds a custom header in the output document in data-aware mode.

* [CustomizeSheetFooter](https://docs.devexpress.com/CoreLibraries/DevExpress.XtraPrinting.XlsxExportOptionsEx.CustomizeSheetFooter)

    Adds a custom footer in the output document in data-aware mode.

* [CustomizeCell](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.PivotXlsxExportOptions.CustomizeCell)

    Specifies cell formatting when exporting a Pivot Grid control to XLSX format in data-aware mode.


## files to Review 

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))

## Documentation

* [Pivot Grid Export](https://docs.devexpress.com/AspNet/114650/components/pivot-grid/export/export)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=webforms-pivot-grid-data-aware-export-customization&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=webforms-pivot-grid-data-aware-export-customization&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
