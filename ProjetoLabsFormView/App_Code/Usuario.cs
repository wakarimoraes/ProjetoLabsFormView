using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Usuario
/// </summary>
public class Usuario
{
    public Usuario()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void cadastrarUsuario(String usuario, String senha, String tipo)
    {
        using (DataClassesDataContext db = new DataClassesDataContext())
        {

            tb_Usuario novoUsuario = new tb_Usuario();

            novoUsuario.u_login = usuario;
            novoUsuario.u_senha = senha;
            novoUsuario.u_tipo = tipo;

            db.tb_Usuarios.InsertOnSubmit(novoUsuario);
            db.SubmitChanges();
            db.Dispose();

        };
    }
}