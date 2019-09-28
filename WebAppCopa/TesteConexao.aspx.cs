using Library.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCopa
{
    public partial class TesteConexao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTestar_Click(object sender, EventArgs e)
        {
            try
            {
                bool conexaoOk = new ConnectionFactory().TestarConexao();
                if (conexaoOk)
                    Response.Write("Conectou!!! 0/");
                else
                    Response.Write("Falhou :(");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

               
            }
        }
    }
}