using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Reporting.WebForms;
using System.Web.Services.Description;
using System.Collections;




public partial class InformeMensual : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


        //Array que contendrá los parámetros

        //string fechaIni = Session["FechaInicio"].ToString();
        //string fechaFin = Session["FechaFinal"].ToString();

        //ReportParameter[] parameters = new ReportParameter[2];
        ////Establecemos el valor de los parámetros
        //parameters[0] = new ReportParameter("FechaInicio", fechaIni);
        //parameters[1] = new ReportParameter("FechaFinal", fechaFin);

        //this.ResiduoTableAdapter.Fill(this.DataTable1);

        //try
        //{
        //    //Pasamos el array de los parámetros al ReportViewer
        //    this.ReportViewer1.ProcessingMode = ProcessingMode.Local;
        //    this.ReportViewer1.LocalReport.SetParameters(parameters);

        //    this.ReportViewer1.ReportRefresh();
        //}
        //catch (Exception er)
        //{

        //    string error = er.Message;

        //}






        //List<ReportParameter> parametros = new List<ReportParameter>();
        //parametros.Add(new ReportParameter("FechaInicio", fechaIni));
        //parametros.Add(new ReportParameter("FechaFinal", fechaFin));
        //ReportViewer1.LocalReport.SetParameters(parametros);

        //List<DataSet> deptos = new List<DataSet>();

        //deptos = DataSet.();

        //ReportDataSource repDs = new ReportDataSource("ObjectDataSource1", deptos);

        //ReportViewer1.LocalReport.DataSources.Clear();
        //ReportViewer1.LocalReport.DataSources.Add(repDs);
        //ReportViewer1.LocalReport.Refresh();
        //Array que contendrá los parámetros

        //ReportParameter[] parameters = new ReportParameter[3];
        ////Establecemos el valor de los parámetros
        //parameters[0] = new ReportParameter("TipoResiduo", TipoProducto.ToString());
        //parameters[1] = new ReportParameter("FechaInicio", fechaIni);
        //parameters[2] = new ReportParameter("FechaFinal", fechaFin);
        //ObjectDataSource1.FILL(this.ObjectDataSource1.DataObjectTypeName);
        ////Pasamos el array de los parámetros al ReportViewer
        //this.ReportViewer1.LocalReport.SetParameters(parameters);
        //ReportViewer1.RefreshReport();
    }









    protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }

    protected void ObjectDataSource1_Selecting1(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }

    protected void TexFechaDesde_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Buscar_Click(object sender, EventArgs e)
    {
        //string FechaDesde;
        //string FechaHasta;

        //FechaDesde = TexFechaDesde.Text;
        //FechaHasta = TexFechaHasta.Text;



        
    }

    protected void ObjectDataSource1_Selecting2(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }
}

