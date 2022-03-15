using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReporteMensual : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    string FechaInicio;
    string FechaFinal;
    string TipoResiduo;
    protected void Buscar_Click(object sender, EventArgs e)
    {
              

    }



    protected void GnerarReporteMensual_Click(object sender, EventArgs e)
    {
        TipoResiduo = TipoProductoReporte.SelectedValue.ToString();
        if (TipoResiduo == "1")
        {
            
            //Session["TipoProducto"] = TipoProductoReporte.SelectedValue.ToString();
            //Session["FechaInicio"] = FechaInicio2.SelectedDate.ToString();
            //Session["FechaFinal"]  = FechaFinal2.SelectedDate.ToString();
            
            Response.Redirect("InformeMensual.aspx");
        }
        else if (TipoResiduo == "3")
        {
            Response.Redirect("InformeResiduosPeligrosos.aspx");
        }
        
       
    }

    protected void SqlResiduoPeso_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void TipoProductoReporte_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}