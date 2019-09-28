<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarJogadores.aspx.cs" Inherits="WebAppCopa.ListarJogadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        //Função para abrir a página cadastro do Jogador como popup
        function ExibirCadastroJogador() {
            var url = 'CadastroJogador.aspx';
            $("#frmModalUrl").attr("src", url);
            $("#frmModal").modal();
            return false;
        }

        //Fechar PopUp
        function FecharPopUp() {
            $("#frmModalUrl").attr("src", "about:blank");
            $("#frmModal").modal('hide');

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
                    class="btn btn-primary form-control" onclick="ExibirCadastroJogador();">
                    <i class="glyphicon glyphicon-plus"></i>Novo    
                </button>
            </div>
            <div class="col-md-9">
                <!--Conteúdo aqui-->
            </div>
        </div>
        <div class="row">            
            <div class="col-md-12">
                <asp:GridView ID="gvJogadores" DataKeyNames="Id" AutoGenerateColumns="False" runat="server">
                    <Columns>
                        <asp:BoundField HeaderText="Nome do Jogador" DataField="NmNome" />
                        <asp:BoundField HeaderText="Data de Nascimento" DataField="DtNascimento" />
                        <asp:BoundField HeaderText="Nº da Camisa" DataField="NrCamisa" />
                        <asp:BoundField HeaderText="Posição" DataField="NmPosicao" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <button class="btn btn-success btn-sm" title="Editar Jogador" type="button"
                                    onclick='ExibirEdicaoJogador(<%#Eval("Id") %>); return false;'>
                                    <i class="glyphicon glyphicon-pencil"></i>
                                </button>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>



    </div>
</asp:Content>
