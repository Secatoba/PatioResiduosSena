<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InformeResiduosPeligrosos.aspx.cs" Inherits="InformeResiduosPeligrosos" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- Encabezado -->

    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Informe Reiduos Peligrosos</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Informe Reiduos Peligrosos
                    </li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- Fin Encabezado-->
  
    <div class="from-row">
        <div class="form-group col-md-12" style="left: 0px; top: 0px">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="form-row">



                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>



                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
                            <LocalReport ReportPath="Informes\Report2.rdlc">
                                <DataSources>
                                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                                </DataSources>
                            </LocalReport>
                        </rsweb:ReportViewer>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="InformePeligrososTableAdapters.DataTable1TableAdapter"></asp:ObjectDataSource>
                        <br />



                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

