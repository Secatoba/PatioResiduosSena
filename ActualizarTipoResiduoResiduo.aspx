<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ActualizarTipoResiduoResiduo.aspx.cs" Inherits="ActualizarTipoResiduoResiduo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Encabezado -->

    <div class="row">
        <div class="col-xl-12">
            <div class="breadcrumb-holder">
                <h1 class="main-title float-left">Actualizar TipoResiduo/Residuo</h1>
                <ol class="breadcrumb float-right">
                    <li class="breadcrumb-item">Inicio</li>
                    <li class="breadcrumb-item active">Registro TipoResiduo/Residuo
                    </li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- Fin Encabezado-->
    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="card mb-3">
                <div class="card-body">

                    <h3>Residuo</h3>
                    <br />

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Residuo], [idResiduo], [idTipoResiduo] FROM [Residuo]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Residuo] WHERE [idResiduo] = @original_idResiduo AND (([Residuo] = @original_Residuo) OR ([Residuo] IS NULL AND @original_Residuo IS NULL)) AND (([idTipoResiduo] = @original_idTipoResiduo) OR ([idTipoResiduo] IS NULL AND @original_idTipoResiduo IS NULL))" InsertCommand="INSERT INTO [Residuo] ([Residuo], [idTipoResiduo]) VALUES (@Residuo, @idTipoResiduo)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Residuo] SET [Residuo] = @Residuo, [idTipoResiduo] = @idTipoResiduo WHERE [idResiduo] = @original_idResiduo AND (([Residuo] = @original_Residuo) OR ([Residuo] IS NULL AND @original_Residuo IS NULL)) AND (([idTipoResiduo] = @original_idTipoResiduo) OR ([idTipoResiduo] IS NULL AND @original_idTipoResiduo IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_idResiduo" Type="Int32" />
                            <asp:Parameter Name="original_Residuo" Type="String" />
                            <asp:Parameter Name="original_idTipoResiduo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Residuo" Type="String" />
                            <asp:Parameter Name="idTipoResiduo" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Residuo" Type="String" />
                            <asp:Parameter Name="idTipoResiduo" Type="Int32" />
                            <asp:Parameter Name="original_idResiduo" Type="Int32" />
                            <asp:Parameter Name="original_Residuo" Type="String" />
                            <asp:Parameter Name="original_idTipoResiduo" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView class="table table-responsive-xl table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idResiduo" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="idTipoResiduo" HeaderText="idTipoResiduo" SortExpression="idTipoResiduo" />
                            <asp:BoundField DataField="idResiduo" HeaderText="idResiduo" SortExpression="idResiduo" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Residuo" HeaderText="Residuo" SortExpression="Residuo" />
                            <asp:CommandField  ButtonType="Button" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>



                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="card mb-3">
                <div class="card-body">

                    <h3>Tipo Residuo</h3>

                    <br />
                    <asp:GridView class="table table-responsive-xl table-bordered" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idTipoResiduo" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="idTipoResiduo" HeaderText="idTipoResiduo" InsertVisible="False" ReadOnly="True" SortExpression="idTipoResiduo" />
                            <asp:BoundField DataField="TipoResiduo" HeaderText="TipoResiduo" SortExpression="TipoResiduo" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TipoResiduo] WHERE [idTipoResiduo] = @original_idTipoResiduo AND (([TipoResiduo] = @original_TipoResiduo) OR ([TipoResiduo] IS NULL AND @original_TipoResiduo IS NULL))" InsertCommand="INSERT INTO [TipoResiduo] ([TipoResiduo]) VALUES (@TipoResiduo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [TipoResiduo], [idTipoResiduo] FROM [TipoResiduo]" UpdateCommand="UPDATE [TipoResiduo] SET [TipoResiduo] = @TipoResiduo WHERE [idTipoResiduo] = @original_idTipoResiduo AND (([TipoResiduo] = @original_TipoResiduo) OR ([TipoResiduo] IS NULL AND @original_TipoResiduo IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_idTipoResiduo" Type="Int32" />
                            <asp:Parameter Name="original_TipoResiduo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TipoResiduo" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TipoResiduo" Type="String" />
                            <asp:Parameter Name="original_idTipoResiduo" Type="Int32" />
                            <asp:Parameter Name="original_TipoResiduo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

