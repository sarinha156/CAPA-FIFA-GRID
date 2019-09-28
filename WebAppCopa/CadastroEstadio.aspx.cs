
using Library.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCopa
{
    public partial class CadastroEstadio : System.Web.UI.Page
    {
        List<Estadio> listaEstadios = new List<Estadio>();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["SessionListaEstadios"] != null)
                {
                    listaEstadios = (List<Estadio>)Session["SessionListaEstadios"];
                }

                Estadio est = new Estadio();
                est.Id = Convert.ToInt32(txtID.Text);
                est.Nome = txtNome.Text;
                est.Cidade = txtCidade.Text;
                est.Capacidade = Convert.ToInt32(txtCapacidade.Text);

                listaEstadios.Add(est);

                //Guardaremos a lista numa sessão para etapas futuras.
                Session["SessionListaEstadios"] = listaEstadios;

                gvEstadios.DataSource = listaEstadios;
                gvEstadios.DataBind();

            }
            catch (Exception ex)
            {
                string scriptMensagem = string.Format("<script>ChamarExibirMensagemErro('{0}');</script>", ex.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "ChaveMensagem", scriptMensagem);
            }
        }
    }
}