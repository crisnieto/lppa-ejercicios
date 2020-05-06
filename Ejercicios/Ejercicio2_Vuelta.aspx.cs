using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Ejercicio2_Vuelta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string Destino, Estrella;
                int Precio, CantidadPersonas, CantidadDias;
                decimal Total, Multiplicador;

                Destino = Request.Form.Get("Destino");
                Estrella = Request.Form.Get("Estrella");
                CantidadPersonas = Convert.ToInt16(Request.Form.Get("txtCantidad"));
                CantidadDias = Convert.ToInt16(Request.Form.Get("txtDias"));

                Precio = 0;
                Multiplicador = 0;

                switch (Destino)
                {
                    case "opMdelPlata":
                        Precio = 100;
                        break;
                    case "opNiza":
                        Precio = 399;
                        break;
                }

                switch (Estrella)
                {
                    case "opTres":
                        Multiplicador = Convert.ToDecimal(1.14999999999999);
                        break;
                    case "opCuatro":
                        Multiplicador = Convert.ToDecimal(1.35000000000001);
                        break;
                }
                Total = Precio * Multiplicador * CantidadPersonas * CantidadDias;
                Response.Write("EL COSTO TOTAL ES $" + Total.ToString("n2"));
            }catch(Exception ex)
            {
                Response.Write("VERIFIQUE QUE LOS DATOS INGRESADOS SEAN CORRECTOS");
            }
            
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio2.aspx");
        }
    }
}