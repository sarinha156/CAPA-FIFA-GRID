<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroEstadio.aspx.cs" Inherits="WebAppCopa.CadastroEstadio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootbox.min.js"></script>
    <script src="Scripts/toastr.min.js"></script>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/toastr.min.css" rel="stylesheet" />

    <style type="text/css">
        .floatCol {
            float: left;
            padding: 3px;
        }
    </style>

    <script type="text/javascript">
        /* Quando usamos "parent" significa que queremos chamar 
        uma função contida na página pai, ou seja, funções contidas
        em ListarEstadios.aspx */

        function ChamarFecharPopUp() {
            parent.FecharPopUp();
        }

        function ChamarExibirMensagemErro(msg) {            
            parent.ExibirMensagemErro(msg);
        }

        function ChamarExibirMensagemSucesso(msg) {
            parent.ExibirMensagemSucesso(msg);
            ChamarFecharPopUp();
        }
    </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <fieldset>
                <legend>Cadastro de Estádios</legend>
                <div class="row form-group">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-9">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-sm-3">
                        ID
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-sm-3">
                        Estádio
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-sm-3">
                        Cidade
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-sm-3">
                        Capacidade
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtCapacidade" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group">

                    <div class="floatCol">
                        <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" CssClass="btn btn-primary" OnClick="btnAdicionar_Click" />
                    </div>
                    <div class="floatCol">
                        <asp:Button ID="btnConcluir" runat="server" Text="Concluir"
                            CssClass="btn btn-success" OnClientClick="return ChamarFecharPopUp();" />
                    </div>
                </div>

                <div class="row form-group">
                    <asp:GridView ID="gvEstadios" runat="server"></asp:GridView>
                </div>

            </fieldset>
        </div>
    </form>
</body>
</html>
