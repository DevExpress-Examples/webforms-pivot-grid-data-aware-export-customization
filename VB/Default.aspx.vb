Imports DevExpress.Printing.ExportHelpers
Imports DevExpress.Web.ASPxPivotGrid
Imports System
Imports System.Collections.Generic
Imports System.Drawing
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim options As New PivotXlsxExportOptions()
        AddHandler options.CustomizeSheetHeader, AddressOf options_CustomizeSheetHeader
        AddHandler options.CustomizeSheetFooter, AddressOf options_CustomizeSheetFooter
        ASPxPivotGridExporter1.ExportXlsxToResponse("Pivot", options)

    End Sub
    Private Sub options_CustomizeSheetHeader(ByVal e As DevExpress.Export.ContextEventArgs)
        e.ExportContext.AddRow(New CellObject() { _
            New CellObject() With { _
                .Value = "Pivot Grid Export Test", .Formatting = New DevExpress.Export.XlFormattingObject() With {.BackColor= Color.GreenYellow} _
            } _
        })
        e.ExportContext.AddRow(New CellObject() { _
            New CellObject() With {.Value = "Header:"}, _
            New CellObject() With {.Value = 1234} _
        })
    End Sub
    Private Sub options_CustomizeSheetFooter(ByVal e As DevExpress.Export.ContextEventArgs)
        e.ExportContext.AddRow(New CellObject() { _
            New CellObject() With {.Value = "Footer:"}, _
            New CellObject() With {.Value = 1.234} _
        })
    End Sub
End Class
