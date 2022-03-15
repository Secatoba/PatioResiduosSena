<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ReporteTrimestral.aspx.cs" Inherits="ReporteTrimestral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Encabezado -->

    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Reporte Trimestral</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Reporte Trimestral
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
                            <asp:Calendar class="form-control" ID="FechaInicio" runat="server" Width="100%"></asp:Calendar>
                            <%-- <input runat="server" name="FechaInicio" id="FechaInicio" class="form-control" type="date" />--%>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Ingrece Fecha Final</label>
                            <asp:Calendar class="form-control" ID="FechaFinal" runat="server" Width="100%"></asp:Calendar>
                            <%--<input runat="server" name="FechaFinal" id="FechaFinal" class="form-control" type="date" />--%>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-row">

                        <asp:SqlDataSource ID="SqlReporteTrimestral" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="
select Instructor.Nombre ,Programa.Programa, count(Registro.idInstructor) as Total from Registro inner join Programa on Registro.idPrograma = Programa.idPrograma inner join Instructor on Registro.idInstructor = Instructor.idInstructor where  (Registro.Fecha) BETWEEN (@FechaInicio) AND (@FechaFinal)
                                   GROUP BY Instructor.Nombre,Programa.Programa">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="FechaInicio" Name="FechaInicio" PropertyName="SelectedDate" />
                                <asp:ControlParameter ControlID="FechaFinal" Name="FechaFinal" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView class="table table-responsive-xl table-bordered" ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlReporteTrimestral" PageSize="5" AutoGenerateColumns="False" Width="520px" Height="156px">
                            <Columns>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Programa" HeaderText="Programa" SortExpression="Programa" />
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" ReadOnly="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlReporteTrimestral" Width="469px" CssClass="auto-style1" Style="margin-top: 0px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="Nombre" YValueMembers="Total"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                                              
                    </div>
                     <asp:Button class="btn btn-primary" ID="ReporteTrimestral1" runat="server" Text="Generar Reporte" OnClick="ReporteTrimestral1_Click" />
                </div>

            </div>
        </div>

    </div>






</asp:Content>

