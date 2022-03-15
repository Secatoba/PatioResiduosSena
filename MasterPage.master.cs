using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
       
         string nombre = Session["IdInicio"].ToString();

        


        if (nombre == "") 
        {
      
            CerrarSesion.Visible = false;
            IniciarSesion.Visible = true;
            Response.Redirect("Login.aspx");
        }
       
        else
        {
       
            CerrarSesion.Visible = true;
            IniciarSesion.Visible = false;

        }

       
       
    }
    protected void CesarrSesion(object sender, EventArgs e)
    {

        Session.Remove("IdInicio");
        Response.Redirect("Inicio.aspx");
    }
    protected void IniciarSesioon(object sender, EventArgs e)
    {

        Session["IdInicio"] = "IniciarSesion";
        Response.Redirect("Login.aspx");
    }
}

