using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Ejercicio3_calcprestamo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                HttpCookie hola = new HttpCookie("Holis");
                hola.Value = "QueTal";

                Response.Cookies.Set(hola);
                bool hasKeys = Response.Cookies.Get("Holis").HasKeys;

        
                string apellido = Request.Form.Get("apellido");
                Response.Write(apellido + "</br>");

                int edad = Convert.ToInt16(Request.Form.Get("edad"));
                Response.Write(edad.ToString() + "</br>");

                string sueldo = Request.Form.Get("sueldo");

                if(edad < 23 || edad > 75)
                {
                    Response.Write("SU EDAD NO LE PERMITE OBTENER EL PRESTAMO </br>");
                }
                else
                {
                    switch (sueldo)
                    {
                        case "A":
                            Response.Write("Es menor a 36000. Se le otorga $36000 </br>");
                            break;
                        case "B":
                            Response.Write("Esta entre 36001 y 72000. Se le otorgaran $45000 </br>");
                            break;
                        case "C":
                            Response.Write("Es mayor a 72001. Se le otorgaran $65000 </br>");
                            break;
                    }
                }
            }catch(Exception ex)
            {
                Response.Write("Alguno de los datos enviados son incorrectos. Verifique que el formato y los valores sean validos </br>");
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio3.aspx");
        }
    }
}