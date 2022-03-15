using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistroEntregaResiduos : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        RegistroExitoso.Visible = false;
        RegistroFallido.Visible = false;
        RegistroExitoso1.Visible = false;
        RegistroFallido1.Visible = false;
        RegistroExitoso2.Visible = false;
        RegistroFallido2.Visible = false;

        


        if (IsPostBack == false)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Residuo");
            dt.Columns.Add("Peso");
            gvResiduos.DataSource = dt;
            gvResiduos.DataBind();
            Session["Datos"] = dt;

        }

    }


    int x;
    CLBDSQL conn = new CLBDSQL();
    ClbuscarNumeroFichaE objNumeroFichaE = new ClbuscarNumeroFichaE();
    ClBuscarNumeroFichaD objNumeroFichaD = new ClBuscarNumeroFichaD();

    ClRegistroInstructorResiduoE objRegistroInstrucResiduoE = new ClRegistroInstructorResiduoE();
    ClRegistroInstructorResiduoL objRegistroInstrucResiduoL = new ClRegistroInstructorResiduoL();
    ClRegistroInstructorResiduoD objRegistroInstrucResiduoD = new ClRegistroInstructorResiduoD();
    ClbuscarNumeroFichaE objNumeroFichaRecibido = new ClbuscarNumeroFichaE();
    protected void Buscar_Click(object sender, EventArgs e)
    {


        registrofuncionario.Visible = false;

        objNumeroFichaE.NumeroFicha = NumeroFicha.Value;





        objNumeroFichaRecibido = objNumeroFichaD.mtdListarProgramaAmbiente(objNumeroFichaE);





        if (objNumeroFichaRecibido.NumeroFicha != null)
        {

            ProgramaFormacion.Value = objNumeroFichaRecibido.Programa;
            Ambiente.Value = objNumeroFichaRecibido.Ambiente;

        }
    }
    string ProgramaFormacion1;
    protected void RegistrarResiduoPorInstructor_Click(object sender, EventArgs e)
    {

        gvResiduos.DataSource = null;
        gvResiduos.DataBind();

        ProgramaFormacion1 = ProgramaFormacion.Value;

        objRegistroInstrucResiduoE.Fecha = Fecha.Value;
        objRegistroInstrucResiduoE.Hora = Hora.Value;
        objRegistroInstrucResiduoE.idInstructor = int.Parse(DropInstructor.SelectedValue.ToString());
        objRegistroInstrucResiduoE.idPrograma = objRegistroInstrucResiduoD.metTraeridPrograma(ProgramaFormacion1);
        objRegistroInstrucResiduoE.idAprendiz = int.Parse(DropAprendiz.SelectedValue.ToString());


        int RegistroResiduoPorInstructor = objRegistroInstrucResiduoL.mtdValidarInstructorResiduo(objRegistroInstrucResiduoE);
        if (RegistroResiduoPorInstructor == 0)
        {
            RegistroFallido.Visible = true;
        }
        else
        {
            //RegistroResiudoPersona.Visible = true;
            RegistroExitoso.Visible = true;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        registroInstructorAprendiz.Visible = false;
        gvResiduos.DataSource = null;
        gvResiduos.DataBind();
        objRegistroInstrucResiduoE.idTrabajador = int.Parse(DropFuncionarios.SelectedValue.ToString());
        objRegistroInstrucResiduoE.Fecha = Fecha2.Value;
        objRegistroInstrucResiduoE.Hora = Hora2.Value;
        if (objRegistroInstrucResiduoE.Hora == "" && objRegistroInstrucResiduoE.Fecha == "")
        {


            RegistroFallido2.Visible = true;
        }
        else
        {

            int registrosReisudoPorFuncionario = objRegistroInstrucResiduoL.mtdValidarFuncionarioResiduo(objRegistroInstrucResiduoE);
            if (registrosReisudoPorFuncionario == 0)
            {
                RegistroFallido2.Visible = true;
            }
            else
            {
                RegistroExitoso2.Visible = true;
            }
        }



    }
    int registroResiduo;
    protected void RegistrarResiduo_Click(object sender, EventArgs e)
    {



        objRegistroInstrucResiduoE.idResiduo = int.Parse(DropResiduo.SelectedValue.ToString());
        if (Peso.Value == "")
        {
            objRegistroInstrucResiduoE.Peso = 0;
        }
        else
        {
            objRegistroInstrucResiduoE.Peso = float.Parse(Peso.Value);
        }

        objRegistroInstrucResiduoE.Observaciones = Observaciones.Value;
        objRegistroInstrucResiduoE.idRegistro = objRegistroInstrucResiduoD.mtdIdRegistro();

        int validar = objRegistroInstrucResiduoD.mtdVerificarRegistro();
        if (validar == 0)
        {

            objRegistroInstrucResiduoE = objRegistroInstrucResiduoD.mtdTraerDatosRegistro(objRegistroInstrucResiduoE);
            registroResiduo = objRegistroInstrucResiduoL.mtdRegistroTotal(objRegistroInstrucResiduoE);
        }
        else
        {

            registroResiduo = objRegistroInstrucResiduoL.mtdValidarResiduo(objRegistroInstrucResiduoE);

        }


        if (registroResiduo == 0)
        {

            RegistroFallido1.Visible = true;

        }
        else
        {
            RegistroExitoso1.Visible = true;
        }

        DataTable dt = new DataTable();
        dt = (DataTable)Session["Datos"];

        dt.Rows.Add(DropResiduo.SelectedItem.ToString(), Peso.Value);

        gvResiduos.DataSource = dt;
        gvResiduos.DataBind();







    }
}
