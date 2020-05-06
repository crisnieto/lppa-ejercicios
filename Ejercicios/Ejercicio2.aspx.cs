using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //Ejecuta el script registrado en Ejercicio2.aspx
            ScriptManager.RegisterStartupScript(this, GetType(), "validar", "validar();", true);
        }
    }
}