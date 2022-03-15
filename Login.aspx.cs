using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ApplicationServices;

public partial class Login : System.Web.UI.Page
{
    string nombre = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Error.Visible = false;
        Bienvenido.Visible = false;

        Session.Add("IdInicio","no");

        string nombre = Session["IdInicio"].ToString();
        if (nombre == "CerrarSesion")
        {
            Session["IdInicio"] = "s";
        }
       

    }
    ClLoginE ObjLoginE = new ClLoginE();
    ClLoginL ObjLoginL = new ClLoginL();

    public int boton { get; set; }
    string Usuarioo;
    protected void InicioSesion_Click(object sender, EventArgs e)
    {
        ObjLoginE.Usuario = Usuario.Value;
        ObjLoginE.Contraseña = Contraseña.Value;
         Usuarioo = Usuario.Value;

        boton = ObjLoginL.mtdIngreso(ObjLoginE);

        if (boton == 14  )
        {

            Session["IdInicio"]=Usuarioo;
             nombre = Session["IdInicio"].ToString();
          
            Response.Redirect("RegistroEntregaResiduos.aspx");
         

        }
        else
        {
            Bienvenido.Visible = false;
            Error.Visible = true;
            //Response.Redirect("Login.aspx");
          

            //mesaje alerta de  correo o usuario  incorrecto
        }

       

    }

  
}