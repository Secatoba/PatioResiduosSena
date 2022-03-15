using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroDependenciaFuncionario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Error1.Visible = false;
        ErrorRegistro.Visible = false;
        RegistroCorrecto.Visible = false;
        RegistroCorrecto1.Visible = false;
    }

    ClDependenciaE objDependenciaE = new ClDependenciaE();
    ClDependenciaL objDependenciaL = new ClDependenciaL();
    ClFuncionarioE objFuncionarioE = new ClFuncionarioE();
    ClFuncionarioL objFuncionarioL = new ClFuncionarioL();
    protected void RegistrarDependencia_Click(object sender, EventArgs e)
    {
        objDependenciaE.Dependencia = NombreDependencia.Value;
        if (objDependenciaE.Dependencia=="")
        {
            ErrorRegistro.Visible = true;
        }
        else
        {
            int registros = objDependenciaL.mtdValidar(objDependenciaE);
            if (registros>=1)
            {
                RegistroCorrecto.Visible = true;
            }
        }
 
    }

    protected void RegistrarFuncionario_Click(object sender, EventArgs e)
    {
        objFuncionarioE.Nombre = NombreFuncionario.Value;
        objFuncionarioE.Apellido = ApellidoFuncionario.Value;
        objFuncionarioE.Documento = DocumentoFuncionario.Value;
        objFuncionarioE.Usuario = Usuario.Value;
        objFuncionarioE.Contraseña = Contraseña.Value;
        objFuncionarioE.IdDependencia = int.Parse(SelectDependencia.SelectedValue.ToString());

        if (objFuncionarioE.Nombre==""|| objFuncionarioE.Apellido==""|| objFuncionarioE.Documento=="")
        {
            Error1.Visible = true;
        }
        else
        {
            int registros = objFuncionarioL.mtdValidar(objFuncionarioE);
            if (registros>=1)
            {
                RegistroCorrecto1.Visible = true;
            }
        }

       




    }
}