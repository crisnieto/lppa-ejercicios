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
    <form id="dato" runat="server">
        <div>
            FORMULARIO DE COTIZACION
                        
            <br />
            <br />
            DONDE SE VA DE VACACIONES?
            <br />

            <asp:RadioButton ID="opMdelPlata" runat="server" GroupName="group1" Text="MAR DEL PLATA" />
            <br />
            <asp:RadioButton ID="opNiza" runat="server" GroupName="group1" Text="NIZA" />

            <br />
            CUAL ES LA CATEGORIA?
            <br />
            <asp:RadioButton ID="opTres" runat="server" GroupName="group2" Text="TRES ESTRELLAS" />
            <br />
            <asp:RadioButton ID="opCuatro" runat="server" GroupName="group2" Text="CUATRO ESTRELLAS" />
            <br />
            <br />
            CANTIDAD DE PERSONAS:
            <br />
            &nbsp;<asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            <br />
            <br />
            CANTIDAD DE DIAS:
            <br />
            &nbsp;<asp:TextBox ID="txtDias" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
            <br />
            
        </div>
    </form>
</body>
</html>
