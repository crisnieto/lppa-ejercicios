<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="Ejercicios.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VIAJES Y TURISMO</title>
    <script>
        function validar() {
            if (dato.opMdelPlata.checked == false && window.dato.opNiza.checked == false) {
                alert("Debe seleccionar un destino")
                return;
            }
            if (dato.opTres.checked == false && dato.opCuatro.checked == false) {
                alert("Debe seleccionar una categoria")
                return;
            }
            if (dato.txtCantidad.value == '') {
                alert("Debe cargar la cantidad de personas")
                return;
            }
            if (dato.txtDias.value == '') {
                alert("Debe cargar la cantidad de dias")
                return;
            }

            dato.submit();
        }
    </script>
</head>
<body>
    <form id="dato" runat="server" action="Ejercicio2_Vuelta.aspx">
        <div>
            FORMULARIO DE COTIZACION
                        
            <br />
            <br />
            <div>
                DONDE SE VA DE VACACIONES?
                <br />

                <asp:RadioButton ID="opMdelPlata" runat="server" GroupName="Destino" Text="MAR DEL PLATA" />
                <br />
                <asp:RadioButton ID="opNiza" runat="server" GroupName="Destino" Text="NIZA" />
            </div>    
            <br />
            <div>
                CUAL ES LA CATEGORIA?
                <br />
                <asp:RadioButton ID="opTres" runat="server" GroupName="Estrella" Text="TRES ESTRELLAS" />
                <br />
                <asp:RadioButton ID="opCuatro" runat="server" GroupName="Estrella" Text="CUATRO ESTRELLAS" />
            </div>
            <br />
            <div>
                CANTIDAD DE PERSONAS:
                <br />
                &nbsp;<asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                CANTIDAD DE DIAS:
                <br />
                &nbsp;<asp:TextBox ID="txtDias" runat="server"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
        </div>
    </form>
</body>
</html>
