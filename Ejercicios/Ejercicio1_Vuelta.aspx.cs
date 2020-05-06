using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Ejercicio1_Vuelta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Calculate(Request.Form.Get("txtApellido"), Request.Form.Get("txtEdad")));
        }

        /*
         * Se separa en un metodo aparte del Load para poder testear unitariamente.
         */ 
        public string Calculate(string apellido, string edad)
        {
            try
            {
                int edadEnMeses = Convert.ToInt16(edad) * 12;
                return(apellido + " su edad en meses es: " + edadEnMeses);
            }
            catch (Exception ex)
            {
                return("Ocurrio un error al procesar los datos enviados. Por favor intente nuevamente");
            }
        }
    }
}