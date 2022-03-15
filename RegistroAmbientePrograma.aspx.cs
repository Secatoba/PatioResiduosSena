using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroAmbientePrograma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ErrorRegistro.Visible = false;
        RegistroCorrecto.Visible = false;
        ErrorRegistro1.Visible = false;
        RegistroCorrecto1.Visible = false;
    }
    ClAmbienteE objAmbienteE = new ClAmbienteE();
    ClAmbienteL objAmbienteL = new ClAmbienteL();
    ClProgramaE objProgramaE = new ClProgramaE();
    ClProgramaL objProgramaL = new ClProgramaL();

    protected void RegistroPrograma_Click(object sender, EventArgs e)
    {
       
        objProgramaE.Programa = Programa.Value;
        objProgramaE.NumeroFicha = NumeroFicha.Value;
        objProgramaE.idAmbiente = int.Parse(SelectAmbiente.SelectedValue.ToString());
        objProgramaE.Nivel = Nivel.Value;
        objProgramaE.Jornada = Jornada.Value;
        if (objProgramaE.Programa=="" || objProgramaE.NumeroFicha==""  || objProgramaE.Jornada=="")
        {
            ErrorRegistro1.Visible = true;

        }
        else
        {

            int registros = objProgramaL.mtdValidar(objProgramaE);
            if (registros >= 1)
            {
                RegistroCorrecto1.Visible = true;
            }
        }


    }

    protected void RegistroAmbiente_Click(object sender, EventArgs e)
    {
        objAmbienteE.NombreAmbiente = NombreAmbiente.Value;
        if (objAmbienteE.NombreAmbiente =="")
        {
            ErrorRegistro.Visible = true;
        }

        int registros = objAmbienteL.mtdValidar(objAmbienteE);
        if (registros==1)
        {
            RegistroCorrecto.Visible = true;
           
        }

    }
}