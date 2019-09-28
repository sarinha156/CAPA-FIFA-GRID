<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJogador.aspx.cs" Inherits="WebAppCopa.CadastroJogador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootbox.min.js"></script>
    <script src="Scripts/toastr.min.js"></script>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/toastr.min.css" rel="stylesheet" />

     <style type="text/css">
        .floatCol
        {
            float: left;
            padding: 3px;
        }
    </style>

    <script type="text/javascript">
        /* Quando usamos "parent" significa que queremos chamar 
           uma função contida na página pai, ou seja, funções contidas
           em ListarJogadores.aspx */

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

        function ConfirmarExclusao(sender) {

            if ($(sender).attr("ExclusaoConfirmada") == "true") {
                return true;
            }

            bootbox.confirm({
                message: "Deseja realmente excluir este jogador?",
                buttons: {
                    confirm: {
                        label: 'Sim',
                        className: 'btn-success'
                    },
                    cancel: {
                        label: 'Não',
                        className: 'btn-danger'
                    }
                },
                callback: function (confirmed) {
                    if (confirmed) {
                        $(sender).attr("ExclusaoConfirmada", confirmed).trigger("click");
                    }
                }
            });
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <fieldset>
                <legend>Cadastro de Jogadores</legend>

                <!-- ID -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        ID
                    </div>

                    <div>
                        <asp:TextBox ID="txtId" runat="server" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <!-- Nome do jogador -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        Nome
                    </div>

                    <div>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Data de Nascimento -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        Data de Nascimento
                    </div>

                    <div>
                        <asp:TextBox ID="txtDataNascimento" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Número camisa -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        Numero Camisa
                    </div>

                    <div>
                        <asp:TextBox ID="txtNumeroCamisa" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Posição -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        Posição
                    </div>

                    <div>
                        <%--<<asp:TextBox ID="txtPosicao" runat="server"></asp:TextBox>--%>
                        <asp:DropDownList ID="ddlPosicao" runat="server"></asp:DropDownList>
                    </div>
                </div>

                <!-- Convocação -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        Convocação
                    </div>

                    <div>
                        <asp:TextBox ID="txtConvocacao" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Dispensa -->
                <div class="row form-group">
                    <div class="col-sm-3">
                        Dispensa
                    </div>

                    <div>
                        <asp:TextBox ID="txtDispensa" runat="server"></asp:TextBox>
                    </div>
                </div>

                <!-- Label-->
                <div class="row form-group">
                    <div class="col-sm-12">
                        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    </div>

                </div>

                <!-- Botões Exibir Dados e Calcular idade-->
                <div class="row form-group">
                    <div class="floatCol">
                        <asp:Button ID="btnExibirDados" runat="server" Text="Exibir Dados"
                            OnClick="btnExibirDados_Click" CssClass="btn btn-primary" />
                    </div>

                    <div class="floatCol">
                        <asp:Button ID="btnCalcularIdade" runat="server" Text="Calcular idade"
                            OnClick="btnCalcularIdade_Click" CssClass="btn btn-success" />
                    </div>

                    <div class="floatCol">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar"
                            OnClick="btnSalvar_Click" CssClass="btn btn-info" />
                    </div>

                    <div class="floatCol">
                        <asp:Button ID="btnExcluir" runat="server" Text="Excluir"
                            CssClass="btn btn-danger" OnClientClick="return ConfirmarExclusao(this);" />
                    </div>

                    <div class="floatCol">
                        <asp:Button ID="btnCalcularIndenizacaoFifa" runat="server" Text="Calcular Indenização  - FIFA" CssClass="btn btn-info" OnClick="btnCalcularIndenizacaoFifa_Click" />
                    </div>





                </div>

            </fieldset>
        </div>
    </form>
</body>
</html>
