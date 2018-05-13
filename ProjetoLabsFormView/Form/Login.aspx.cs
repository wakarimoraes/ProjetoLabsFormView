using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Form_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Util ut = new Util();

        if (ut.validarLogin(txtUsuario.Text,txtSenha.Text))
        {
            Response.Redirect("FrmSoftware.aspx");
        }
        else
        {

        }
    }
}