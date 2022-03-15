<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistroEntregaResiduos.aspx.cs" Inherits="RegistroEntregaResiduos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Encabezado -->
    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Registro Entrega Residuos</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Registro Entrega Residuos</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- Fin Encabezado-->
    <div class="row">
        <div  id="registroInstructorAprendiz" runat="server" class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-3">
                <div class="card-body">

                    <h5>Registro por Instructor/Aprendiz</h5>
                    <br />

                    <%-- <a role="button" href="#" class="btn btn-primary"><span class="btn-label"><i class="fa fa-check"></i></span>Registrar</a>--%>
                    <label for="userName">
                        Numero De Ficha<span class="text-danger">*
                        </span>
                    </label>
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        &nbsp;<input        runat="server" name="nick"  class="form-control" id="NumeroFicha" type="search" />
                        <br />
                        <asp:Button class="btn btn-primary" ID="Buscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />

                    </div>
                    <br />


                    <div class="form-group">
                        <label for="pass1">Programa De Formacion<span class="text-danger">*</span></label>
                        <input  runat="server" name="" id="ProgramaFormacion" class="form-control" type="text" />
                    </div>
                    <div class="form-group">
                        <label for="pass1">Ambiente<span class="text-danger">*</span></label>
                        <input  runat="server" name="" id="Ambiente" class="form-control" type="text" />
                    </div>
                    <div class="form-group">
                        <input runat="server" name="Fecha" id="Fecha" class="form-control" type="date" />
                    </div>
                    <div class="form-group">
                        <input runat="server" name="Hora" id="Hora" class="form-control" type="time" />
                    </div>
                    <div class="form-group">

                        <asp:SqlDataSource ID="SqlInstructor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre], [idInstructor], [Apellido] FROM [Instructor]"></asp:SqlDataSource>
                        <asp:DropDownList class="form-control" ID="DropInstructor" runat="server" DataSourceID="SqlInstructor" DataTextField="Apellido" DataValueField="idInstructor" Width="100%">
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">

                        <asp:SqlDataSource ID="SqlAprendiz" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre], [idAprendiz], [Apellido] FROM [Aprendiz]"></asp:SqlDataSource>
                        <asp:DropDownList class="form-control" ID="DropAprendiz" runat="server" DataSourceID="SqlAprendiz" DataTextField="Apellido" DataValueField="idAprendiz" Width="100%">
                        </asp:DropDownList>

                    </div>

                      <div runat="server" class="container-fluid">
                        <br />                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="RegistroExitoso" runat="server" class="card-body">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            Registro Exitoso.								 
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
                                    <div id="RegistroFallido" runat="server" class="card-body">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            Registro Fallido.								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <asp:Button class="btn btn-primary" ID="RegistrarResiduoPorInstructor" runat="server" Text="Registrar" OnClick="RegistrarResiduoPorInstructor_Click" />

                </div>
            </div>
        </div>

        <div id="RegistroResiudoPersona" runat="server" class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-3">
                <div class="card-body">

                    <div class="form-group">

                        <asp:SqlDataSource ID="SqlTipoResiduo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [idTipoResiduo], [TipoResiduo] FROM [TipoResiduo]"></asp:SqlDataSource>

                        <asp:DropDownList class="form-control" ID="DropTipoResiduo" runat="server" Width="100%" AutoPostBack="True" DataSourceID="SqlTipoResiduo" DataTextField="TipoResiduo" DataValueField="idTipoResiduo">
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">

                        <asp:SqlDataSource ID="SqlResiduo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [idResiduo], [Residuo], [idTipoResiduo] FROM [Residuo] WHERE ([idTipoResiduo] = @idTipoResiduo)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropTipoResiduo" Name="idTipoResiduo" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <asp:DropDownList class="form-control" ID="DropResiduo" runat="server" Width="100%" AutoPostBack="True" DataSourceID="SqlResiduo" DataTextField="Residuo" DataValueField="idResiduo">
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label for="userName">Peso(gr)<span class="text-danger">*</span></label>
                        <input onkeypress="return valida(event)" runat="server" class="form-control" id="Peso" type="number" />

                    </div>
                    <div class="form-group">
                        <label for="userName">Observaciones<span class="text-danger"></span></label>
                        <div>
                            <textarea runat="server" id="Observaciones" class="form-control"></textarea>
                        </div>
                    </div>
                     <div runat="server" class="container-fluid">
                        <br />                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="RegistroExitoso1" runat="server" class="card-body">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            Registro Exitoso.								 
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
                                    <div id="RegistroFallido1" runat="server" class="card-body">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            Registro Fallido.								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <asp:Button class="btn btn-primary" ID="RegistrarResiduo" runat="server" Text="Registrar" OnClick="RegistrarResiduo_Click" />
                    <br />


                    <div class="card-body">

                        <asp:GridView class="table table-responsive-xl table-bordered" ID="gvResiduos" runat="server">
                        </asp:GridView>



                    </div>



                </div>

            </div>
        </div>
    </div>


    <div id="registrofuncionario" runat="server" class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
        <div class="card mb-3">
            <div class="card-body">

                <div class="form-group">
                    <h5>Registro Por Funcionario</h5>
                    &nbsp;<asp:SqlDataSource ID="SqlDependencia" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Dependencia], [idDependencia] FROM [Dependencia]"></asp:SqlDataSource>
                    <asp:DropDownList class="form-control" ID="DropDependencias" runat="server" Width="100%" DataSourceID="SqlDependencia" DataTextField="Dependencia" DataValueField="idDependencia" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nombre], [idDependecia], [Apellido], [idTrabajador] FROM [Trabajador] WHERE ([idDependecia] = @idDependecia)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDependencias" Name="idDependecia" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList class="form-control" ID="DropFuncionarios" runat="server" Width="100%" DataTextField="Nombre" DataValueField="idTrabajador" DataSourceID="SqlDataSource1" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <input runat="server" name="Fecha" id="Fecha2" class="form-control" type="date" />
                </div>
                <div class="form-group">
                    <input runat="server" name="Hora" id="Hora2" class="form-control" type="time" />
                </div>
                 <div runat="server" class="container-fluid">
                        <br />                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="RegistroExitoso2" runat="server" class="card-body">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            Registro Exitoso.								 
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
                                    <div id="RegistroFallido2" runat="server" class="card-body">
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            Registro Fallido.								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
            </div>
        </div>
    </div>










    <%--        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <div class="card mb-3">
                <div class="card-body">
                    <%-- <form action="#" method="get" class="sidebar-form">
                        <div class="form-group">
                            <input id="NuemroFicha" type="text" name="NuemroFicha" class="form-control" placeholder="Numero De Ficha"/>
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="BuscarNumeroFicha" class="btn btn-flat">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>

                    <form>
                       

                    </form>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>

