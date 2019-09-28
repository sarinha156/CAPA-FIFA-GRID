<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarEstadios.aspx.cs" Inherits="WebAppCopa.ListarEstadios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        //Função para abrir a página cadastro do Jogador como popup
        function ExibirCadastroEstadio() {
            var url = 'CadastroEstadio.aspx';
            $("#frmModalUrl").attr("src", url);
            $("#frmModal").modal();
            return false;
        }

        //Fechar PopUp
        function FecharPopUp() {
            $("#frmModalUrl").attr("src", "about:blank");
            $("#frmModal").modal('hide');

            //A página pais será recarregada após o fechamento do popup.
            location.href = location.href
        }

        //Exibir Mensagem de sucesso
        function ExibirMensagemSucesso(msg) {
            // make it not dissappear
            toastr.success(msg, "Informação:", {
                //"timeOut": "0",
                "extendedTImeout": "0",
                "progressBar": true
            });
        }

        //Exibir Mensagem de erro
        function ExibirMensagemErro(msg) {
            // make it not dissappear
            toastr.error(msg, "Informação:", {
                //"timeOut": "0",
                "extendedTImeout": "0",
                "progressBar": true
            });
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div id="frmModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <iframe src="javascript:" id="frmModalUrl" frameborder="0" class="frame-param" style="border: 0; width: 800px; height: 600px"
                        scrolling="auto" marginheight="0" marginwidth="0"></iframe>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">
                <button type="button" name="btnNovo" id="btnNovo" value="Novo"
                    class="btn btn-primary form-control" onclick="ExibirCadastroEstadio();">
                    <i class="glyphicon glyphicon-plus"></i>Novo    
                </button>
            </div>
            <div class="col-md-9">
                <!--Conteúdo aqui-->
            </div>
        </div>
        <br />
        <div class="row">
            <div class="floatCol">
                <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
            </div>
            <div class="floatCol">
                <asp:Button ID="btnPesquisar" CssClass="btn btn-success" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            </div>
            <div class="floatCol">
                <asp:Button ID="btnLimparPesquisa" CssClass="btn btn-warning" runat="server" Text="Limpar" OnClick="btnLimparPesquisa_Click" />
            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="gvEstadiosAdicionados" AutoGenerateColumns="False" runat="server">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID Estádio" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome do Estádio" />
                        <asp:BoundField DataField="Cidade" HeaderText="Cidade do Estádio" />
                        <asp:BoundField DataField="Capacidade" HeaderText="Lotação" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>




    </div>

</asp:Content>
