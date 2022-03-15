using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroInstructorAprendiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ErrorRegistro.Visible = false;
        RegistroCorrecto.Visible = false;
        ErrorRegistro1.Visible = false;
        RegistroCorrecto1.Visible = false;
    }
    ClAprendizE objAprendizE = new ClAprendizE();
    ClAprendizL objAprendizL = new ClAprendizL();
    ClInstructorE objInstructorE = new ClInstructorE();
    ClInstructorL objInstructorL = new ClInstructorL();
    ClInstructorAprendizE objInstructorProgramaE = new ClInstructorAprendizE();
    ClInstructorAprendizL objInstructorProgramaL = new ClInstructorAprendizL();
    protected void RegistrarAprediz_Click(object sender, EventArgs e)
    {
        objAprendizE.Nombre = NombreAprendiz.Value;
        objAprendizE.Apellido = ApellidoAprendiz.Value;
        objAprendizE.Documento = DocumentoAprendiz.Value;
        objAprendizE.idPrograma = int.Parse(selectPrograma.SelectedValue.ToString());
        if (objAprendizE.idPrograma == 0 || objAprendizE.Nombre=="" || objAprendizE.Apellido=="" )
        {
            ErrorRegistro.Visible = true;
        }
        else
        {
            int registros = objAprendizL.mtdValidar(objAprendizE);
            if (registros >= 1)
            {
                RegistroCorrecto.Visible = true;
            }
            else
            {
                ErrorRegistro.Visible = true;
            }
        }
       
       
    }

    protected void RegistrarInstructor_Click(object sender, EventArgs e)
    {
        objInstructorE.Nombre = NombreInstructor.Value;
        objInstructorE.Apellido = ApellidoInstructor.Value;
        objInstructorE.Documento = DocumentoInstructor.Value;
        if (objInstructorE.Nombre==""||objInstructorE.Apellido==""|| objInstructorE.Documento=="")
        {
            ErrorRegistro1.Visible = true;
        }
        else
        {
            objInstructorL.mtdValidar(objInstructorE);

            int idInstructor = objInstructorL.mtdValidar2();

            int idPrograma2 = int.Parse(SelectProgram2.SelectedValue.ToString());

            objInstructorProgramaE.IdInstructor = idInstructor;
            objInstructorProgramaE.IdPrograma = idPrograma2;

            objInstructorProgramaL.mtdValidar(objInstructorProgramaE);

            RegistroCorrecto1.Visible = true;

        }


    }
}