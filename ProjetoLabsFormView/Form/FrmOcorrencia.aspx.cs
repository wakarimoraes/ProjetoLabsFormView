using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Form_FrmOcorrencia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (DataClassesDataContext banco = new DataClassesDataContext())
        {
            if (!IsPostBack)
            {
            pegarLaboratorios();
            }
        }
        

    }

    void pegarLaboratorios()
    {
        using (DataClassesDataContext banco = new DataClassesDataContext())
        {
            var resultado = (from p in banco.tb_Laboratorios select p.lb_Numero).ToList();
            dplLabs.DataSource = resultado;
            dplLabs.DataBind();
        }

    }

    protected void btnSalvarOcorrencia(object sender, EventArgs e)
    {
        Ocorrencia oc = new Ocorrencia();
        oc.cadastrarOcorrencia(txtArea.ToString(),dplLabs.SelectedItem.Text);
    }

    protected void btnCadastrarUsuario_Click(object sender, EventArgs e)
    {

    }
}