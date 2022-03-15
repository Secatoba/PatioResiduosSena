<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistroDependenciaFuncionario.aspx.cs" Inherits="RegistroDependenciaFuncionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Encabezado -->
    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Registro Dependencia/Funcionario</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Registro Dependencia/Funcionario</li>
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
                        <label for="userName">Nombre de la Dependencia<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="NombreDependencia" type="text" />
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
                                            <strong>Bien!</strong>Registro Correcto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:Button  class="btn btn-primary" ID="RegistrarDependencia" runat="server" Text="Registrar Dependencia" OnClick="RegistrarDependencia_Click" />

                    </div>

                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <div class="card mb-3">
                <div class="card-body">



                    <div class="form-group">
                        <br />
                        <label for="userName">Nombres<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)"  runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="NombreFuncionario" type="text" />
                        <br />


                    </div>

                    <div class="form-group">
                        <br />
                        <label for="userName">Apellidos<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)"  runat="server" name="nick" data-parsley-trigger="change"  class="form-control" id="ApellidoFuncionario" type="text" />
                        <br />


                    </div>

                    <div class="form-group">
                        <br />
                        <label for="userName">Documento<span class="text-danger">*</span></label>
                        <input  onkeypress="return valida(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="DocumentoFuncionario" type="text" />
                        <br />


                    </div>


                    <div class="form-group">
                        <br />
                        <label for="userName">Usuario<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)"  runat="server" name="nick" data-parsley-trigger="change"  class="form-control" id="Usuario" type="text" />
                        <br />
                    </div>


                    <div class="form-group">
                        <br />
                        <label for="userName">Contraseña<span class="text-danger">*</span></label>
                        <input  runat="server" name="nick" data-parsley-trigger="change"  class="form-control" id="Contraseña" type="password" />
                        <br />
                    </div>
                    <br />
                    <div class="form-group">                       
                        <asp:DropDownList  class="form-control"  ID="SelectDependencia" runat="server" Width="100%" DataSourceID="SqlDependencia" DataTextField="Dependencia" DataValueField="idDependencia">
                        </asp:DropDownList>                       
                    </div>
                     <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="Error1" runat="server" class="card-body">

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
                                            <strong>Bien!</strong>Registro Correcto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    <asp:Button class="btn btn-primary" ID="RegistrarFuncionario" runat="server" Text="Registrar funcionario" OnClick="RegistrarFuncionario_Click" />
                    <asp:SqlDataSource ID="SqlDependencia" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Dependencia], [idDependencia] FROM [Dependencia]"></asp:SqlDataSource>
                    <br />
                    

                </div>
            </div>
        </div>

    </div>
</asp:Content>

