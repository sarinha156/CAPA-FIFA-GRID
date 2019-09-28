using Library.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCopa
{
    public partial class ListarEstadios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["SessionListaEstadios"] != null)
                {
                    List<Estadio> listaEstadiosAdicionados = (List<Estadio>)Session["SessionListaEstadios"];
                    gvEstadiosAdicionados.DataSource = listaEstadiosAdicionados;
                    gvEstadiosAdicionados.DataBind();
                }
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            //Recuperando a Lista da Session
            List<Estadio> listaEstadiosAdicionados = (List<Estadio>)Session["SessionListaEstadios"];

            //Consulta Via LINQ - Languagem Integrated Query
            //Armazenando numa outra lista
            List<Estadio> listFiltrado = (from r in listaEstadiosAdicionados
                                          where r.Cidade.Contains(txtPesquisa.Text)
                                          select r).ToList();

            //Atribuindo a segunda lista ao GridView
            gvEstadiosAdicionados.DataSource = listFiltrado;
            gvEstadiosAdicionados.DataBind();
        }

        protected void btnLimparPesquisa_Click(object sender, EventArgs e)
        {
            //Recuperando a lista da Sessão e atribuindo ao GridView novamente
            List<Estadio> listaEstadiosAdicionados = (List<Estadio>)Session["SessionListaEstadios"];

            gvEstadiosAdicionados.DataSource = listaEstadiosAdicionados;
            gvEstadiosAdicionados.DataBind();
        }
    }
}