<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistroInstructorAprendiz.aspx.cs" Inherits="RegistroInstructorAprendiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Encabezado -->
    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Registro Instructor/Aprendiz</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Registro Instructor/Aprendiz</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- Fin Encabezado-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-3">
                <div class="card-body">

                    <div class="form-group">
                        <br />
                        <label for="userName">Nombres<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="NombreAprendiz" type="text" />
                        <br />


                    </div>
                    <div class="form-group">
                        <br />
                        <label for="userName">Apellidos<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="ApellidoAprendiz" type="text" />
                        <br />


                    </div>
                    <div class="form-group">
                        <br />
                        <label for="userName">Documento<span class="text-danger">*</span></label>
                        <input onkeypress="return valida(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="DocumentoAprendiz" type="text" />
                        <br />


                    </div>

                    <div class="form-group">

                        <asp:DropDownList class="form-control" ID="selectPrograma" runat="server" Width="100%" DataSourceID="SqlDataSource1" DataTextField="Programa" DataValueField="idPrograma">
                        </asp:DropDownList>

                    </div>
                    <br />

                    <%--<a role="button" href="#" class="btn btn-primary"><span class="btn-label"><i class="fa fa-check"></i></span>Registrar</a>--%>
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
                    <asp:Button class="btn btn-primary" ID="RegistrarAprediz" runat="server" Text="Registrar Aprendiz" OnClick="RegistrarAprediz_Click" />

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Programa], [idPrograma] FROM [Programa]"></asp:SqlDataSource>

                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-3">
                <div class="card-body">

                    <div class="form-group">
                        <br />
                        <label for="userName">Nombres<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="NombreInstructor" type="text" />
                        <br />


                    </div>
                    <div class="form-group">
                        <br />
                        <label for="userName">Apellidos<span class="text-danger">*</span></label>
                        <input onkeypress="return soloLetras(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="ApellidoInstructor" type="text" />
                        <br />


                    </div>
                    <div class="form-group">
                        <br />
                        <label for="userName">Documento<span class="text-danger">*</span></label>
                        <input onkeypress="return valida(event)" runat="server" name="nick" data-parsley-trigger="change" class="form-control" id="DocumentoInstructor" type="text" />
                        <br />


                    </div>
                    <div class="form-group">
                        <asp:DropDownList class="form-control" ID="SelectProgram2" runat="server" Width="100%" DataSourceID="SqlDataSource2" DataTextField="Programa" DataValueField="idPrograma">
                        </asp:DropDownList>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [idPrograma], [Programa] FROM [Programa]"></asp:SqlDataSource>
                    <br />
                   
                    <%--<a role="button" href="#" class="btn btn-primary"><span class="btn-label"><i class="fa fa-check"></i></span>Registrar</a>--%>
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
                                            <strong>Bien!</strong>Registro Correcto.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    <asp:Button class="btn btn-primary" ID="RegistrarInstructor" runat="server" Text="Registrar Instructor" OnClick="RegistrarInstructor_Click" />
                  


                </div>
            </div>
        </div>
    </div>

</asp:Content>

