using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Util
/// </summary>
public class Util
{
    public Util()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool validarLogin(String usuario,String senha)
    {
        using (DataClassesDataContext db = new DataClassesDataContext())
        {
            var resultado = (from p in db.tb_Usuarios where p.u_login.Equals(usuario) && p.u_senha.Equals(senha) select p).FirstOrDefault();

            if (resultado!= null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}