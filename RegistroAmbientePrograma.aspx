<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistroAmbientePrograma.aspx.cs" Inherits="RegistroAmbientePrograma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Encabezado -->
    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Registro Ambiente/Programa</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Registro Ambiente/Programa</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- Fin Encabezado-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <div class="card mb-3">
                <div class="card-body">

                    <div class="form-group">
                        <br />
                        <label for="userName">Nombre del ambiente<span class="text-danger">*</span></label>
                        <input runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="NombreAmbiente" type="text" />
                        <br />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="ErrorRegistro" runat="server" class="card-body">

                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>Error!</strong>Registro Incorrecto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="RegistroCorrecto" runat="server" class="card-body">

                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>Bien!</strong>Registro correcto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:Button class="btn btn-primary" Text="Registrar" ID="RegistroAmbiente" runat="server" OnClick="RegistroAmbiente_Click" />
                        <%-- <a role="button" href="#" class="btn btn-primary"><span class="btn-label"><i class="fa fa-check"></i></span>Registrar</a>--%>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <div class="card mb-3">
                <div class="card-body">

                    <div class="form-group">
                        &nbsp;<asp:DropDownList class="form-control" ID="SelectAmbiente" runat="server" DataSourceID="SqlDataSource1" DataTextField="NombreAmbiente" DataValueField="idAmbiente" Width="100%">
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [NombreAmbiente], [idAmbiente] FROM [Ambiente]"></asp:SqlDataSource>
                        <br />
                        <label for="userName">Programa<span class="text-danger">*</span></label>
                        <input runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="Programa" type="text" />
                        <br />


                    </div>

                    <div class="form-group">
                        <br />
                        <label for="userName">Numero de ficha<span class="text-danger">*</span></label>
                        <input runat="server" onkeypress="return valida(event)" name="nick" data-parsley-trigger="change" class="form-control" id="NumeroFicha" type="text" />
                        <br />


                    </div>

                    <div class="form-group">
                        <br />
                        <label for="userName">Nivel<span class="text-danger">*</span></label>
                        <input  onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="Nivel" type="text" />
                        <br />


                    </div>



                    <div class="form-group">
                        <br />
                        <label for="userName">Jornada<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="Jornada" type="text" />
                        <br />


                    </div>

                     <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="ErrorRegistro1" runat="server" class="card-body">

                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>Error!</strong>Registro Incorrecto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                             <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="RegistroCorrecto1" runat="server" class="card-body">

                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>Bien!</strong>Registro correcto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>


                    <asp:Button class="btn btn-primary" ID="RegistroPrograma" Text="Registrar" runat="server" OnClick="RegistroPrograma_Click" />
                    <%-- <a runat="server" role="button" href="#" class="btn btn-primary"><span class="btn-label"><i class="fa fa-check"></i></span>Registrar</a>--%>
                </div>
            </div>
        </div>

    </div>

</asp:Content>

