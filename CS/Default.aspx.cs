using DevExpress.Printing.ExportHelpers;
using DevExpress.Web.ASPxPivotGrid;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void ASPxButton1_Click(object sender, EventArgs e) {
        PivotXlsxExportOptions options = new PivotXlsxExportOptions();
        options.CustomizeSheetHeader += options_CustomizeSheetHeader;
        options.CustomizeSheetFooter += options_CustomizeSheetFooter;
        ASPxPivotGridExporter1.ExportXlsxToResponse("Pivot", options);

    }
    void options_CustomizeSheetHeader(DevExpress.Export.ContextEventArgs e) {
        e.ExportContext.AddRow(new CellObject[] { 
            new CellObject() { 
                Value = "Pivot Grid Export Test", 
                Formatting = new DevExpress.Export.XlFormattingObject() { 
                    BackColor= Color.GreenYellow 
                }   
            }         
        });
        e.ExportContext.AddRow(new CellObject[] { 
            new CellObject() { Value = "Header:" },
            new CellObject() { Value = 1234 }
        });
    }
    void options_CustomizeSheetFooter(DevExpress.Export.ContextEventArgs e) {
        e.ExportContext.AddRow(new CellObject[] { 
            new CellObject() { Value = "Footer:" },
            new CellObject() { Value = 1.234 }
        });
    }
}
