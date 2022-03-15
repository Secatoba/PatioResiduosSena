<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReporteMensual.aspx.cs" Inherits="ReporteMensual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Encabezado -->

    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Reporte Mensual</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Reporte Mensual
                    </li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- Fin Encabezado-->


    <div class="from-row">
        <div class="form-group col-md-12">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Ingrece Fecha Inicio</label>
                            <asp:Calendar class="form-control" ID="FechaInicio2" runat="server" Width="100%"></asp:Calendar>
                            <%--<input runat="server" name="FechaInicio" id="FechaInicio" class="form-control" type="date" />--%>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Ingrece Fecha Final</label>
                            <asp:Calendar class="form-control" ID="FechaFinal2" runat="server" Width="100%"></asp:Calendar>
                           <%-- <input runat="server" name="FechaFinal" id="FechaFinal" class="form-control" type="date" />--%>
                        </div>
                    </div>
                </div>



              
                <div class="card-body">
                    <asp:DropDownList class="form-control" ID="TipoProductoReporte" runat="server" Width="43%" AutoPostBack="True" OnSelectedIndexChanged="TipoProductoReporte_SelectedIndexChanged">
                        <asp:ListItem Value="1">Aprovechables</asp:ListItem>
                        <asp:ListItem Value="3">Peligrosos</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <div class="form-row">
                        <asp:SqlDataSource ID="SqlResiduoPeso" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT SUM(Registro.Peso) AS PesoTotal, Residuo.Residuo FROM Registro INNER JOIN Residuo ON Registro.idResiduo = Residuo.idResiduo WHERE (Residuo.idTipoResiduo = @TipoResiduo) AND (Registro.Fecha BETWEEN @FechaInicio AND @FechaFinal) GROUP BY Residuo.Residuo" OnSelecting="SqlResiduoPeso_Selecting">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TipoProductoReporte" Name="TipoResiduo" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="FechaInicio2" Name="FechaInicio" PropertyName="SelectedDate" />
                                <asp:ControlParameter ControlID="FechaFinal2" Name="FechaFinal" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView class="table table-responsive-xl table-bordered" ID="gdvPesoFinalResiduo" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="5" Width="430px" DataSourceID="SqlResiduoPeso">
                            <Columns>
                                <asp:BoundField DataField="PesoTotal" HeaderText="PesoTotal" ReadOnly="True" SortExpression="PesoTotal" />
                                <asp:BoundField DataField="Residuo" HeaderText="Residuo" SortExpression="Residuo" />
                            </Columns>
                        </asp:GridView>
                        <asp:Chart ID="Chart1" runat="server" Height="377px" Width="395px" DataSourceID="SqlResiduoPeso">

                            <Series>
                                <asp:Series Name="Series1" XValueMember="Residuo" YValueMembers="PesoTotal">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <br />
                        <br />
                        
                    </div>
                    <asp:Button class="btn btn-primary" ID="GnerarReporteMensual" runat="server" Text="Generar Reporte" OnClick="GnerarReporteMensual_Click" />


                </div>

            </div>
        </div>
    </div>






</asp:Content>

