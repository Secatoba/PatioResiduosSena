<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Login</title>

    <!-- Core CSS -->
    <script src="assets/js/jquery-1.10.2.min.js"></script>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="assets/css/login.css" rel="stylesheet" />

    <!-- Checkboxes style -->
    <link href="assets/css/bootstrap-checkbox.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>

</head>
<body>

    <div class="login-menu">
        <div class="container">
            <nav class="nav">

                <a class="nav-link active" href="Login.aspx">Login</a>
            </nav>
        </div>
    </div>

    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">


            <div class="card">
                <h4 class="card-header">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G.P.R</h4>

                <div class="card-body">

                    <div id="AlertaError" runat="server" class="container-fluid">
                        <br />
                        <div id="Bienvenido" runat="server" class="row>">

                            <div class="col-md-12">
                                <div class="form-group">
                                    <div id="Div1" runat="server" class="card-body">

                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>Bienvenido!</strong> A G.R.S
								 
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
                                    <div id="Error" runat="server" class="card-body">

                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            <strong>Error!</strong>Usuario o Contraseña Incorrectas.
								 
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <form id="form1" runat="server">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Usuario</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon12"><i class="fa fa-envelope-open-o" aria-hidden="true"></i></span>
                                        </div>
                                        <input required="required" runat="server" id="Usuario" class="form-control" name="login_email" type="text" />
                                    </div>
                                    <div class="help-block with-errors text-danger"></div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Contraseña</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1"><i class="fa fa-unlock" aria-hidden="true"></i></span>
                                        </div>
                                        <input required="required" runat="server" id="Contraseña" data-minlength="6" name="login_password" class="form-control" data-error="Password to short" type="password" />
                                    </div>
                                    <div class="help-block with-errors text-danger"></div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="auto-style1">
                                &nbsp;</div>
                        </div>

                    <div class="clear"><asp:Button Class="btn btn-primary btn-lg btn-block" ID="InicioSesion" runat="server" Text="Iniciar" OnClick="InicioSesion_Click" />

                            </div>



                    </form>



                </div>

            </div>

        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <span class="text-muted">Programador:Sebastian Torres</span>
        </div>
    </footer>

    <!-- Core Scripts -->

    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Bootstrap validator  -->
    <script src="assets/js/validator.min.js"></script>


</body>
</html>
